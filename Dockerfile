FROM ubuntu:22.04 AS gollvm-full

# use bash -- cmake fails otherwise
SHELL ["/bin/bash", "-c"]
ENV SHELL=/bin/bash
ENV PYENV_ROOT="$HOME/.pyenv"
ENV PATH="$PYENV_ROOT/bin:$PATH"

RUN apt -qq -o=Dpkg::Use-Pty=0 update && \
    apt -qq -o=Dpkg::Use-Pty=0 install --no-install-recommends -y wget curl git cmake python3 ninja-build build-essential clang autoconf ca-certificates && \
    apt -qq -o=Dpkg::Use-Pty=0 list --installed

RUN mkdir -p /gollvm/src /gollvm/build /gollvm/install

# llvm-project commit 09629215c272f09e3ebde6cc7eac9625d28910ff
RUN git clone https://github.com/llvm/llvm-project /gollvm/src && \
    cd /gollvm/src && \
    git reset --hard 09629215c272f09e3ebde6cc7eac9625d28910ff

RUN cd /gollvm/src/llvm/tools && \
    git clone https://go.googlesource.com/gollvm && \
    cd gollvm && \
    git clone https://go.googlesource.com/gofrontend && \
    cd libgo && \
    git clone https://github.com/libffi/libffi.git && \
    git clone https://github.com/ianlancetaylor/libbacktrace.git

RUN cd /gollvm/build && cmake -DCMAKE_INSTALL_PREFIX=/gollvm/install -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD="X86;RISCV" \
    -DLLVM_USE_LINKER=gold -DLLVM_INSTALL_UTILS=ON -G Ninja /gollvm/src/llvm

RUN cd /gollvm/build && ninja gollvm
RUN cd /gollvm/build && ninja GoBackendCoreTests && tools/gollvm/unittests/BackendCore/GoBackendCoreTests
RUN cd /gollvm/build && ninja install-gollvm && ninja libgo_all
RUN cd /gollvm/build && ninja llc && ninja llvm-objdump

ENV GOLLVM_PATH=/gollvm/install
ENV LD_LIBRARY_PATH=$GOLLVM_PATH/lib64
ENV PATH=$GOLLVM_PATH/bin:$PATH

# FROM ubuntu
# ENV GOLLVM_PATH=/gollvm/install
# WORKDIR /
# COPY --from=gollvm-full $GOLLVM_PATH $GOLLVM_PATH

# https://github.com/golang/go/issues/56092
# docker run -it -v "$(pwd)":/workspace -v "$(pwd)/llvm-project:/gollvm/src" gollvm-testing
# docker run -it -v "$(pwd)":/workspace -v "$(pwd)/llvm-project:/gollvm/src" gollvm-09629215c

