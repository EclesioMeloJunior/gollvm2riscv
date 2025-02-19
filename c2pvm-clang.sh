TARGET_BITNESS=64
TARGET_ABI=lp64e
TARGET_FLAGS="--target=riscv${TARGET_BITNESS}-unknown-none-elf -march=rv${TARGET_BITNESS}emac -mabi=${TARGET_ABI} -nostdlib -nodefaultlibs"

/opt/llvm/bin/clang $TARGET_FLAGS \
    -Wl,--error-limit=0 \
    -Wl,--emit-relocs \
    -Wl,--no-relax \
    -mrelax \
    -fpic \
    -fPIE \
    -ffast-math \
    -gdwarf-5 \
    -g3 \
    -O3 \
    -Dconstinit="" \
    -Wno-implicit-int \
    -Wno-int-conversion \
    -Wno-shift-op-parentheses \
    -Wno-visibility \
    -Wno-absolute-value \
    -Wno-pointer-sign \
    -Wno-string-plus-int \
    -fno-exceptions \
    -fno-rtti \
    -o c2pvm-clang.elf \
    ./c-example/example.c

#/usr/local/riscv-unknown-elf/bin/riscv-unknown-elf-objdump -D -W ./c2pvm.elf > ./c2pvm.dump.txt