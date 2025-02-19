FROM ubuntu:22.04 AS gollvm-full

# use bash -- cmake fails otherwise
SHELL ["/bin/bash", "-c"]
ENV SHELL=/bin/bash
ENV PYENV_ROOT="$HOME/.pyenv"
ENV PATH="$PYENV_ROOT/bin:$PATH"
ENV PATH="/opt/riscv/bin:$PATH"

RUN apt -qq -o=Dpkg::Use-Pty=0 update && \
    apt -qq -o=Dpkg::Use-Pty=0 install --no-install-recommends -y \ 
    wget curl git cmake python3 ninja-build build-essential \
    autoconf automake autotools-dev curl python3-pip python3-tomli libmpc-dev libisl-dev libmpfr-dev libgmp-dev gawk \
    bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat1-dev libexpat-dev libglib2.0-dev libslirp-dev \
    clang autoconf ca-certificates && \
    apt -qq -o=Dpkg::Use-Pty=0 list --installed

RUN mkdir -p /gollvm/src /gollvm/build /gollvm/compiler-rt-build /gollvm/install /riscv/toolchain

# # llvm-project commit 09629215c272f09e3ebde6cc7eac9625d28910ff
RUN git clone https://github.com/llvm/llvm-project /gollvm/src
# RUN cd /gollvm/src && git reset --hard 09629215c272f09e3ebde6cc7eac9625d28910ff    

# RUN cd /gollvm/src/llvm/tools && git clone https://go.googlesource.com/gollvm
# RUN cd /gollvm/src/llvm/tools/gollvm && git clone https://go.googlesource.com/gofrontend
# RUN cd /gollvm/src/llvm/tools/gollvm/libgo && git clone https://github.com/libffi/libffi.git
# RUN cd /gollvm/src/llvm/tools/gollvm/libgo && git clone https://github.com/ianlancetaylor/libbacktrace.git

RUN cd /gollvm/build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/llvm \
    -DLLVM_ENABLE_PROJECTS="clang;lld" -DLLVM_TARGETS_TO_BUILD="X86;AArch64;RISCV;WebAssembly" -DLLVM_ENABLE_RUNTIMES=compiler-rt /gollvm/src/llvm
RUN cd /gollvm/build && ninja
RUN cd /gollvm/build && ninja install

RUN cd /gollvm/compiler-rt-build && cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/opt/llvm \
    -DCOMPILER_RT_BAREMETAL_BUILD=ON \
    -DCMAKE_AR=/opt/llvm/bin/llvm-ar \
    -DCMAKE_ASM_COMPILER_TARGET="riscv32" \
    -DCMAKE_ASM_FLAGS="--target=riscv32 -march=rv32em -mabi=ilp32e -nostdlib -nodefaultlibs" \
    -DCMAKE_C_COMPILER=/opt/llvm/bin/clang \
    -DCMAKE_C_COMPILER_TARGET="riscv32" \
    -DCMAKE_C_FLAGS="--target=riscv32 -march=rv32em -mabi=ilp32e -nostdlib -nodefaultlibs" \
    -DCMAKE_EXE_LINKER_FLAGS="-fuse-ld=lld" \
    -DCMAKE_NM=/opt/llvm/bin/llvm-nm \
    -DCMAKE_RANLIB=/opt/llvm/bin/llvm-ranlib \
    -DCOMPILER_RT_BUILD_BUILTINS=ON \
    -DCOMPILER_RT_BUILD_LIBFUZZER=OFF \
    -DCOMPILER_RT_BUILD_MEMPROF=OFF \
    -DCOMPILER_RT_BUILD_PROFILE=OFF \
    -DCOMPILER_RT_BUILD_SANITIZERS=OFF \
    -DCOMPILER_RT_BUILD_XRAY=OFF \
    -DCOMPILER_RT_DEFAULT_TARGET_ONLY=ON \
    -DLLVM_CONFIG_PATH=/opt/llvm/bin/llvm-config \
    /gollvm/src/compiler-rt
RUN cd /gollvm/compiler-rt-build && ninja
RUN cd /gollvm/compiler-rt-build && ninja install

# RUN cd /gollvm/build && ninja gollvm
# RUN cd /gollvm/build && ninja GoBackendCoreTests && tools/gollvm/unittests/BackendCore/GoBackendCoreTests
# RUN cd /gollvm/build && ninja install-gollvm && ninja libgo_all
# RUN cd /gollvm/build && ninja llc && ninja llvm-objdump

# ENV GOLLVM_PATH=/gollvm/install
# ENV LD_LIBRARY_PATH=$GOLLVM_PATH/lib64
# ENV PATH=$GOLLVM_PATH/bin:$PATH

# RUN git clone https://github.com/riscv/riscv-gnu-toolchain /riscv/toolchain
# #FIXME WA according to https://github.com/riscv-collab/riscv-gnu-toolchain/issues/1669
# RUN cd /riscv/toolchain && sed -i '/shallow = true/d' .gitmodules && sed -i 's/--depth 1//g' Makefile.in
# RUN cd /riscv/toolchain && git submodule update --force --recursive --init --remote

# # Configure and Build Binutils
# RUN cd /riscv/toolchain && mkdir build-binutils
# RUN cd /riscv/toolchain/build-binutils && ../binutils/configure --prefix=/opt/riscv --target=riscv64-unknown-elf \
#     --with-abi=lp64e --with-arch=rv64e --enable-multilib
# RUN cd /riscv/toolchain/build-binutils && make -j$(nproc)
# RUN cd /riscv/toolchain/build-binutils && make install

# # Build GCC (Bootstrap Phase 1 - Only Compiler Tools)
# RUN cd /riscv/toolchain && mkdir build-gcc
# RUN cd /riscv/toolchain/build-gcc && ../gcc/configure --prefix=/opt/riscv --target=riscv64-unknown-elf \
#     --with-abi=lp64e --with-arch=rv64e --disable-libssp --disable-libquadmath \
#     --disable-shared --disable-threads --disable-libatomic --disable-libstdcxx \
#     --enable-languages=c
# RUN cd /riscv/toolchain/build-gcc && make -j$(nproc) all-gcc
# RUN cd /riscv/toolchain/build-gcc && make install-gcc

# RUN export PATH=/opt/riscv/bin:$PATH

# # Build Newlib (Lightweight C Library for Embedded Systems)
# RUN cd /riscv/toolchain && mkdir build-newlib
# RUN cd /riscv/toolchain/build-newlib && ../newlib/configure --with-isa-spec=2.2 --prefix=/opt/riscv --target=riscv64-unknown-elf \
#     --with-abi=lp64e --with-arch=rv64e
# RUN cd /riscv/toolchain/build-newlib && make -j$(nproc)
# RUN cd /riscv/toolchain/build-newlib && make install

# # Build GCC (Final Stage - Full Toolchain)
# RUN cd /riscv/toolchain/build-gcc && make -j$(nproc) all
# RUN cd /riscv/toolchain/build-gcc && make install

# RUN cd /riscv/toolchain && ./configure --prefix=/opt/riscv --with-isa-spec=2.2 --with-arch=rv64e --with-abi=lp64e
# RUN cd /riscv/toolchain && make

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