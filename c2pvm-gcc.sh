/usr/local/riscv-unknown-elf/bin/riscv-unknown-elf-gcc-14.2.0 -march=rv64ema -mabi=lp64e -nostdlib -nodefaultlibs -fpie \
    -Wl,--emit-relocs \
    -Wl,--unique \
    -Wl,--no-relax \
    -mrelax \
    -fpic \
    -fPIE \
    -ffast-math \
    -gdwarf-5 \
    -g3 \
    -O3 \
    -Wno-implicit-int \
    -Wno-int-conversion \
    -Wno-shift-op-parentheses \
    -Wno-visibility \
    -Wno-absolute-value \
    -Wno-pointer-sign \
    -Wno-string-plus-int \
    -fno-exceptions \
    -fno-rtti \
    -D_GNU_SOURCE \
    -E \
    -o c2pvm-gcc.txt \
    ./c-example/example.c

/usr/local/riscv-unknown-elf/bin/riscv-unknown-elf-objdump -D -W ./c2pvm.elf > ./c2pvm.dump.txt