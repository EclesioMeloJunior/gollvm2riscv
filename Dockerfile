FROM ubuntu:22.04 AS gollvm-full

# use bash -- cmake fails otherwise
SHELL ["/bin/bash", "-c"]
ENV SHELL=/bin/bash
ENV PYENV_ROOT="$HOME/.pyenv"
ENV PATH="$PYENV_ROOT/bin:$PATH"

RUN apt -qq -o=Dpkg::Use-Pty=0 update && \
    apt -qq -o=Dpkg::Use-Pty=0 install --no-install-recommends -y \ 
    wget curl git cmake python3 ninja-build build-essential \
    autoconf automake autotools-dev curl python3-pip python3-tomli libmpc-dev libmpfr-dev libgmp-dev gawk \
    bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev libglib2.0-dev libslirp-dev \
    clang autoconf ca-certificates && \
    apt -qq -o=Dpkg::Use-Pty=0 list --installed

RUN mkdir -p /gollvm/src /gollvm/build /gollvm/install /riscv/toolchain

# llvm-project commit 09629215c272f09e3ebde6cc7eac9625d28910ff
RUN git clone https://github.com/llvm/llvm-project /gollvm/src
RUN cd /gollvm/src && git reset --hard 09629215c272f09e3ebde6cc7eac9625d28910ff    

RUN cd /gollvm/src/llvm/tools && git clone https://go.googlesource.com/gollvm
RUN cd /gollvm/src/llvm/tools/gollvm && git clone https://go.googlesource.com/gofrontend
RUN cd /gollvm/src/llvm/tools/gollvm/libgo && git clone https://github.com/libffi/libffi.git
RUN cd /gollvm/src/llvm/tools/gollvm/libgo && git clone https://github.com/ianlancetaylor/libbacktrace.git

RUN cd /gollvm/build && cmake -DCMAKE_INSTALL_PREFIX=/gollvm/install -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD="X86;RISCV" \
    -DLLVM_USE_LINKER=gold -DLLVM_INSTALL_UTILS=ON -G Ninja /gollvm/src/llvm

RUN cd /gollvm/build && ninja gollvm
RUN cd /gollvm/build && ninja GoBackendCoreTests && tools/gollvm/unittests/BackendCore/GoBackendCoreTests
RUN cd /gollvm/build && ninja install-gollvm && ninja libgo_all
RUN cd /gollvm/build && ninja llc && ninja llvm-objdump

ENV GOLLVM_PATH=/gollvm/install
ENV LD_LIBRARY_PATH=$GOLLVM_PATH/lib64
ENV PATH=$GOLLVM_PATH/bin:$PATH

RUN git clone https://github.com/riscv/riscv-gnu-toolchain /riscv/toolchain
#FIXME WA according to https://github.com/riscv-collab/riscv-gnu-toolchain/issues/1669
RUN cd /riscv/toolchain && sed -i '/shallow = true/d' .gitmodules && sed -i 's/--depth 1//g' Makefile.in
RUN cd /riscv/toolchain && ./configure --prefix=/opt/riscv --enable-multilib --with-multilib-generator="rv32ema-ilp32e--;rv64ema-lp64e--"
RUN cd /riscv/toolchain && make
RUN cd /riscv/toolchain && make build-sim SIM=qemu

# FROM ubuntu
# ENV GOLLVM_PATH=/gollvm/install
# WORKDIR /
# COPY --from=gollvm-full $GOLLVM_PATH $GOLLVM_PATH

# https://github.com/golang/go/issues/56092
# docker run -it -v "$(pwd)":/workspace -v "$(pwd)/llvm-project:/gollvm/src" gollvm-testing
# docker run -it -v "$(pwd)":/workspace -v "$(pwd)/llvm-project:/gollvm/src" gollvm-09629215c

# go build -work -x example.go 1> transcript.txt 2>&1
# --gcc-toolchain=/opt/riscv
# -static-libgo

# llvm-goc -c -O2 -g -m64 -gno-record-gcc-switches -o /tmp/go-build754271184/b001/_go_.o \
#   -fgo-importcfg=/tmp/go-build754271184/b001/importcfg ./example.go /tmp/go-build754271184/b001/_gomod_.go \
#   --gcc-toolchain=/opt/riscv

#  /gollvm/build/bin/llc -march=riscv64 -mcpu=generic-rv64 -mattr=+a,+m,+64bit -filetype=asm -o example.s ./example.ll
#  /gollvm/build/bin/llc -march=riscv32 -mcpu=generic-rv32 -filetype=asm -o example-32bit.s ./example.ll

# llc-18 -march=riscv64 -mtriple=riscv64-unknown-elf -mattr=+e,+a,+m,+64bit -non-global-value-max-name-size=10000 -filetype=obj -o tinygoexample.o ./example-tinygo.ll