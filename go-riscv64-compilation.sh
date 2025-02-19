#!/bin/bash
set -x  # Turn on command tracing
WORK=/tmp/xp1
mkdir -p $WORK/b010/
mkdir -p $WORK/b011/
mkdir -p $WORK/b009/
mkdir -p $WORK/b004/
echo '# import config' > $WORK/b010/importcfg # internal
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b010/_pkg_.a -trimpath "$WORK/b010=>" -p internal/coverage/rtcov -lang=go1.23 -std -complete -buildid yZ9sWqukpmjPUNKM00C2/yZ9sWqukpmjPUNKM00C2 -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b010/importcfg -pack /usr/local/go/src/internal/coverage/rtcov/rtcov.go
echo '# import config' > $WORK/b011/importcfg # internal
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b011/_pkg_.a -trimpath "$WORK/b011=>" -p internal/godebugs -lang=go1.23 -std -complete -buildid 7rGMwfcnpkWSjTDm6HIC/7rGMwfcnpkWSjTDm6HIC -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b011/importcfg -pack /usr/local/go/src/internal/godebugs/table.go
echo '# import config' > $WORK/b009/importcfg # internal
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b009/_pkg_.a -trimpath "$WORK/b009=>" -p internal/byteorder -lang=go1.23 -std -complete -buildid 5PRom6dmNFoj0gKT2gFR/5PRom6dmNFoj0gKT2gFR -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b009/importcfg -pack /usr/local/go/src/internal/byteorder/byteorder.go
echo '# import config' > $WORK/b004/importcfg # internal
mkdir -p $WORK/b013/
mkdir -p $WORK/b012/
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b004/_pkg_.a -trimpath "$WORK/b004=>" -p internal/goarch -lang=go1.23 -std -complete -buildid MRtwku3t3FOwUtBYu2AO/MRtwku3t3FOwUtBYu2AO -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b004/importcfg -pack /usr/local/go/src/internal/goarch/goarch.go /usr/local/go/src/internal/goarch/goarch_riscv64.go /usr/local/go/src/internal/goarch/zgoarch_riscv64.go
echo '# import config' > $WORK/b013/importcfg # internal
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b013/_pkg_.a -trimpath "$WORK/b013=>" -p internal/goos -lang=go1.23 -std -complete -buildid qw4oUxJtrxX1wJQIDTqA/qw4oUxJtrxX1wJQIDTqA -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b013/importcfg -pack /usr/local/go/src/internal/goos/goos.go /usr/local/go/src/internal/goos/unix.go /usr/local/go/src/internal/goos/zgoos_linux.go
echo '# import config' > $WORK/b012/importcfg # internal
mkdir -p $WORK/b007/
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b010/_pkg_.a # internal
mkdir -p $WORK/b024/
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b012/_pkg_.a -trimpath "$WORK/b012=>" -p internal/goexperiment -lang=go1.23 -std -complete -buildid To1d6Uxm-108pwV3mb8_/To1d6Uxm-108pwV3mb8_ -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b012/importcfg -pack /usr/local/go/src/internal/goexperiment/exp_aliastypeparams_off.go /usr/local/go/src/internal/goexperiment/exp_arenas_off.go /usr/local/go/src/internal/goexperiment/exp_boringcrypto_off.go /usr/local/go/src/internal/goexperiment/exp_cacheprog_off.go /usr/local/go/src/internal/goexperiment/exp_cgocheck2_off.go /usr/local/go/src/internal/goexperiment/exp_coverageredesign_on.go /usr/local/go/src/internal/goexperiment/exp_fieldtrack_off.go /usr/local/go/src/internal/goexperiment/exp_heapminimum512kib_off.go /usr/local/go/src/internal/goexperiment/exp_loopvar_off.go /usr/local/go/src/internal/goexperiment/exp_newinliner_off.go /usr/local/go/src/internal/goexperiment/exp_preemptibleloops_off.go /usr/local/go/src/internal/goexperiment/exp_rangefunc_off.go /usr/local/go/src/internal/goexperiment/exp_regabiargs_on.go /usr/local/go/src/internal/goexperiment/exp_regabiwrappers_on.go /usr/local/go/src/internal/goexperiment/exp_staticlockranking_off.go /usr/local/go/src/internal/goexperiment/flags.go
cp $WORK/b010/_pkg_.a /home/eclesiomelo/.cache/go-build/a6/a6005254cf7ffac230a59ba77159b8f1f96283f1e2eef7d7baea6d1f128ee5cf-d # internal
mkdir -p $WORK/b028/
mkdir -p $WORK/b017/
mkdir -p $WORK/b014/
mkdir -p $WORK/b023/
echo -n > $WORK/b007/go_asm.h # internal
mkdir -p $WORK/b015/
cd /usr/local/go/src/internal/cpu
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/cpu -trimpath "$WORK/b007=>" -I $WORK/b007/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b007/symabis ./cpu.s
echo '# import config' > $WORK/b028/importcfg # internal
echo '# import config' > $WORK/b014/importcfg # internal
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b028/_pkg_.a -trimpath "$WORK/b028=>" -p internal/unsafeheader -lang=go1.23 -std -complete -buildid SyH9G7f-Cv5B8JeEiRxM/SyH9G7f-Cv5B8JeEiRxM -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b028/importcfg -pack /usr/local/go/src/internal/unsafeheader/unsafeheader.go
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b009/_pkg_.a # internal
echo -n > $WORK/b017/go_asm.h # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b013/_pkg_.a # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b011/_pkg_.a # internal
cd /usr/local/go/src/internal/runtime/syscall
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/runtime/syscall -trimpath "$WORK/b017=>" -I $WORK/b017/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b017/symabis ./asm_linux_riscv64.s
cp $WORK/b013/_pkg_.a /home/eclesiomelo/.cache/go-build/95/953b1d9ff519f7c224380a997df8d6f3d61a9c703d80bfde987d4626821c81fd-d # internal
mkdir -p $WORK/b029/
cp $WORK/b011/_pkg_.a /home/eclesiomelo/.cache/go-build/42/42fef2030365dddfd463a8c708d81b09fc02963b2bb868dc1317825127b03d88-d # internal
cp $WORK/b009/_pkg_.a /home/eclesiomelo/.cache/go-build/f1/f1f2409c8d9059518a3c84703331bfcfc967892eface21ece9d80206aa6074af-d # internal
mkdir -p $WORK/b030/
mkdir -p $WORK/b031/
echo '# import config' > $WORK/b023/importcfg # internal
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b014/_pkg_.a -trimpath "$WORK/b014=>" -p internal/profilerecord -lang=go1.23 -std -complete -buildid rLgyN81PQ34n-0TpggaQ/rLgyN81PQ34n-0TpggaQ -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b014/importcfg -pack /usr/local/go/src/internal/profilerecord/profilerecord.go
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b023/_pkg_.a -trimpath "$WORK/b023=>" -p internal/race -lang=go1.23 -std -complete -buildid Xf9GhF1vVTo-nh8tj7TT/Xf9GhF1vVTo-nh8tj7TT -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b023/importcfg -pack /usr/local/go/src/internal/race/doc.go /usr/local/go/src/internal/race/norace.go
echo -n > $WORK/b024/go_asm.h # internal
cd /usr/local/go/src/sync/atomic
/usr/local/go/pkg/tool/linux_amd64/asm -p sync/atomic -trimpath "$WORK/b024=>" -I $WORK/b024/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b024/symabis ./asm.s
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b004/_pkg_.a # internal
echo -n > $WORK/b015/go_asm.h # internal
cd /usr/local/go/src/internal/runtime/atomic
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/runtime/atomic -trimpath "$WORK/b015=>" -I $WORK/b015/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b015/symabis ./atomic_riscv64.s
echo '# import config' > $WORK/b029/importcfg # internal
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b029/_pkg_.a -trimpath "$WORK/b029=>" -p internal/asan -lang=go1.23 -std -complete -buildid gqruB3czo1NrZEa4iKFG/gqruB3czo1NrZEa4iKFG -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b029/importcfg -pack /usr/local/go/src/internal/asan/doc.go /usr/local/go/src/internal/asan/noasan.go
cp $WORK/b004/_pkg_.a /home/eclesiomelo/.cache/go-build/95/957cd72d99d95eb335243124533dedb5aa008e34911d0eab484a2e3f5a67d72e-d # internal
echo '# import config' > $WORK/b017/importcfg # internal
echo '# import config' > $WORK/b031/importcfg # internal
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b017/_pkg_.a -trimpath "$WORK/b017=>" -p internal/runtime/syscall -lang=go1.23 -std -buildid hgDnQ9b92mMObFpolvqe/hgDnQ9b92mMObFpolvqe -goversion go1.23.6 -symabis $WORK/b017/symabis -c=4 -nolocalimports -importcfg $WORK/b017/importcfg -pack -asmhdr $WORK/b017/go_asm.h /usr/local/go/src/internal/runtime/syscall/defs_linux.go /usr/local/go/src/internal/runtime/syscall/defs_linux_riscv64.go /usr/local/go/src/internal/runtime/syscall/syscall_linux.go
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b031/_pkg_.a -trimpath "$WORK/b031=>" -p internal/msan -lang=go1.23 -std -complete -buildid 8urh_SHW-JQbq9hfxBk9/8urh_SHW-JQbq9hfxBk9 -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b031/importcfg -pack /usr/local/go/src/internal/msan/doc.go /usr/local/go/src/internal/msan/nomsan.go
echo '# import config' > $WORK/b030/importcfg # internal
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b030/_pkg_.a -trimpath "$WORK/b030=>" -p internal/itoa -lang=go1.23 -std -complete -buildid FW_krO5_ENOik8L3dg6R/FW_krO5_ENOik8L3dg6R -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b030/importcfg -pack /usr/local/go/src/internal/itoa/itoa.go
echo '# import config' > $WORK/b024/importcfg # internal
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b024/_pkg_.a -trimpath "$WORK/b024=>" -p sync/atomic -lang=go1.23 -std -buildid dEy4dZn-J2vhxrHPtjoX/dEy4dZn-J2vhxrHPtjoX -goversion go1.23.6 -symabis $WORK/b024/symabis -c=4 -nolocalimports -importcfg $WORK/b024/importcfg -pack -asmhdr $WORK/b024/go_asm.h /usr/local/go/src/sync/atomic/doc.go /usr/local/go/src/sync/atomic/type.go /usr/local/go/src/sync/atomic/value.go
echo '# import config' > $WORK/b007/importcfg # internal
mkdir -p $WORK/b003/
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b007/_pkg_.a -trimpath "$WORK/b007=>" -p internal/cpu -lang=go1.23 -std -buildid 3lQtx1VNQOxUmEBja5GR/3lQtx1VNQOxUmEBja5GR -goversion go1.23.6 -symabis $WORK/b007/symabis -c=4 -nolocalimports -importcfg $WORK/b007/importcfg -pack -asmhdr $WORK/b007/go_asm.h /usr/local/go/src/internal/cpu/cpu.go /usr/local/go/src/internal/cpu/cpu_no_name.go /usr/local/go/src/internal/cpu/cpu_riscv64.go
echo -n > $WORK/b003/go_asm.h # internal
cd /usr/local/go/src/internal/abi
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/abi -trimpath "$WORK/b003=>" -I $WORK/b003/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b003/symabis ./abi_test.s ./stub.s
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b012/_pkg_.a # internal
cp $WORK/b012/_pkg_.a /home/eclesiomelo/.cache/go-build/b8/b8475352b40b0016c02e30aac2b400a75e8564043ea475d74ce847be0be795b9-d # internal
mkdir -p $WORK/b008/
echo -n > $WORK/b008/go_asm.h # internal
cd /usr/local/go/src/internal/chacha8rand
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/chacha8rand -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b008/symabis ./chacha8_stub.s
cat >/tmp/xp1/b003/importcfg << 'EOF' # internal
# import config
packagefile internal/goarch=/tmp/xp1/b004/_pkg_.a
EOF
echo '# import config' > $WORK/b015/importcfg # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b028/_pkg_.a # internal
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b003/_pkg_.a -trimpath "$WORK/b003=>" -p internal/abi -lang=go1.23 -std -buildid ipLUfvp-_bWDDbBUYOJ8/ipLUfvp-_bWDDbBUYOJ8 -goversion go1.23.6 -symabis $WORK/b003/symabis -c=4 -nolocalimports -importcfg $WORK/b003/importcfg -pack -asmhdr $WORK/b003/go_asm.h /usr/local/go/src/internal/abi/abi.go /usr/local/go/src/internal/abi/abi_riscv64.go /usr/local/go/src/internal/abi/compiletype.go /usr/local/go/src/internal/abi/escape.go /usr/local/go/src/internal/abi/funcpc.go /usr/local/go/src/internal/abi/iface.go /usr/local/go/src/internal/abi/map.go /usr/local/go/src/internal/abi/rangefuncconsts.go /usr/local/go/src/internal/abi/runtime.go /usr/local/go/src/internal/abi/stack.go /usr/local/go/src/internal/abi/switch.go /usr/local/go/src/internal/abi/symtab.go /usr/local/go/src/internal/abi/type.go
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b015/_pkg_.a -trimpath "$WORK/b015=>" -p internal/runtime/atomic -lang=go1.23 -std -buildid MTfO1EiC0DDBhjETLD5h/MTfO1EiC0DDBhjETLD5h -goversion go1.23.6 -symabis $WORK/b015/symabis -c=4 -nolocalimports -importcfg $WORK/b015/importcfg -pack -asmhdr $WORK/b015/go_asm.h /usr/local/go/src/internal/runtime/atomic/atomic_riscv64.go /usr/local/go/src/internal/runtime/atomic/doc.go /usr/local/go/src/internal/runtime/atomic/stubs.go /usr/local/go/src/internal/runtime/atomic/types.go /usr/local/go/src/internal/runtime/atomic/types_64bit.go /usr/local/go/src/internal/runtime/atomic/unaligned.go
cp $WORK/b028/_pkg_.a /home/eclesiomelo/.cache/go-build/96/963c65b7fdff84dd6d3c33f38e05e0ccf9cb5bf655bda01993dbc1a7716420ff-d # internal
mkdir -p $WORK/b019/
cat >/tmp/xp1/b019/importcfg << 'EOF' # internal
# import config
packagefile internal/goarch=/tmp/xp1/b004/_pkg_.a
EOF
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b019/_pkg_.a -trimpath "$WORK/b019=>" -p runtime/internal/math -lang=go1.23 -std -complete -buildid Bed5JXGiLq66mccL-zt1/Bed5JXGiLq66mccL-zt1 -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b019/importcfg -pack /usr/local/go/src/runtime/internal/math/math.go
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b031/_pkg_.a # internal
cp $WORK/b031/_pkg_.a /home/eclesiomelo/.cache/go-build/bf/bfaaa62b53fa2ba93ac0670725810f8090cf3e216f0b9f438fb7170583eb3b3e-d # internal
mkdir -p $WORK/b020/
cat >/tmp/xp1/b020/importcfg << 'EOF' # internal
# import config
packagefile internal/goarch=/tmp/xp1/b004/_pkg_.a
packagefile internal/goos=/tmp/xp1/b013/_pkg_.a
EOF
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b020/_pkg_.a -trimpath "$WORK/b020=>" -p runtime/internal/sys -lang=go1.23 -std -complete -buildid oNkAjny1HvGnqaRsG-9G/oNkAjny1HvGnqaRsG-9G -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b020/importcfg -pack /usr/local/go/src/runtime/internal/sys/consts.go /usr/local/go/src/runtime/internal/sys/consts_norace.go /usr/local/go/src/runtime/internal/sys/intrinsics.go /usr/local/go/src/runtime/internal/sys/nih.go /usr/local/go/src/runtime/internal/sys/sys.go /usr/local/go/src/runtime/internal/sys/zversion.go
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b023/_pkg_.a # internal
cat >/tmp/xp1/b008/importcfg << 'EOF' # internal
# import config
packagefile internal/byteorder=/tmp/xp1/b009/_pkg_.a
packagefile internal/goarch=/tmp/xp1/b004/_pkg_.a
EOF
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b008/_pkg_.a -trimpath "$WORK/b008=>" -p internal/chacha8rand -lang=go1.23 -std -buildid NBHVCiDvbxi2WnjFhOEv/NBHVCiDvbxi2WnjFhOEv -goversion go1.23.6 -symabis $WORK/b008/symabis -c=4 -nolocalimports -importcfg $WORK/b008/importcfg -pack -asmhdr $WORK/b008/go_asm.h /usr/local/go/src/internal/chacha8rand/chacha8.go /usr/local/go/src/internal/chacha8rand/chacha8_generic.go
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b014/_pkg_.a # internal
cp $WORK/b023/_pkg_.a /home/eclesiomelo/.cache/go-build/de/de5c149112413021d9230b116d98b104cd060d1d0e485cd0c5634712403a4d5f-d # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b030/_pkg_.a # internal
cd /usr/local/go/src/internal/runtime/syscall
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/runtime/syscall -trimpath "$WORK/b017=>" -I $WORK/b017/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b017/asm_linux_riscv64.o ./asm_linux_riscv64.s
cp $WORK/b014/_pkg_.a /home/eclesiomelo/.cache/go-build/63/63abf235dfb723f611c8ceba96a594fddb60120f3e562adc6f204c358488d26c-d # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b029/_pkg_.a # internal
cp $WORK/b030/_pkg_.a /home/eclesiomelo/.cache/go-build/28/284bcead13cd6d68993b26ece256de77f6ba2e77de4593f61f81e24d407aed31-d # internal
cp $WORK/b029/_pkg_.a /home/eclesiomelo/.cache/go-build/3c/3cb4f379cf4b858c454a20f1091815e6a30589ea41b2dc597a9d056d18172752-d # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b020/_pkg_.a # internal
cp $WORK/b020/_pkg_.a /home/eclesiomelo/.cache/go-build/19/19018fd613ae4f0efefb7938acf773ad3415077d4b82b357d488f776974c9be9-d # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b019/_pkg_.a # internal
cp $WORK/b019/_pkg_.a /home/eclesiomelo/.cache/go-build/cf/cf1b58b1ea50382463ee146ad56624e47455bfe7cd4a104149d53e0f65050b14-d # internal
cd /usr/local/go/src/internal/runtime/atomic
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/runtime/atomic -trimpath "$WORK/b015=>" -I $WORK/b015/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b015/atomic_riscv64.o ./atomic_riscv64.s
cd /usr/local/go/src/sync/atomic
/usr/local/go/pkg/tool/linux_amd64/asm -p sync/atomic -trimpath "$WORK/b024=>" -I $WORK/b024/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b024/asm.o ./asm.s
cd /usr/local/go/src/internal/cpu
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/cpu -trimpath "$WORK/b007=>" -I $WORK/b007/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b007/cpu.o ./cpu.s
/usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b007/_pkg_.a $WORK/b007/cpu.o # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b007/_pkg_.a # internal
cd /usr/local/go/src/internal/runtime/atomic
/usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b015/_pkg_.a $WORK/b015/atomic_riscv64.o # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b015/_pkg_.a # internal
cp $WORK/b007/_pkg_.a /home/eclesiomelo/.cache/go-build/8b/8ba10331b9bf9a6fb3c00e3cdadccac206ec48012f3738208f2df4c18acaa20b-d # internal
cd /usr/local/go/src/sync/atomic
/usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b024/_pkg_.a $WORK/b024/asm.o # internal
mkdir -p $WORK/b006/
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b024/_pkg_.a # internal
echo -n > $WORK/b006/go_asm.h # internal
cd /usr/local/go/src/internal/bytealg
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/bytealg -trimpath "$WORK/b006=>" -I $WORK/b006/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b006/symabis ./compare_riscv64.s ./count_riscv64.s ./equal_riscv64.s ./indexbyte_riscv64.s
cp $WORK/b015/_pkg_.a /home/eclesiomelo/.cache/go-build/30/302ef9698cc1044ef455e95ba4ba1e627a3d9087f23d65a25aa39bfa10eb64be-d # internal
mkdir -p $WORK/b016/
cd /usr/local/go/src/internal/runtime/syscall
/usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b017/_pkg_.a $WORK/b017/asm_linux_riscv64.o # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b017/_pkg_.a # internal
cp $WORK/b024/_pkg_.a /home/eclesiomelo/.cache/go-build/80/806e3d623994d4094408819c229125dc06cc5fd746e1d0e6a2a99f118a71c1c1-d # internal
cat >/tmp/xp1/b016/importcfg << 'EOF' # internal
# import config
packagefile internal/runtime/atomic=/tmp/xp1/b015/_pkg_.a
EOF
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b016/_pkg_.a -trimpath "$WORK/b016=>" -p internal/runtime/exithook -lang=go1.23 -std -complete -buildid YHf7Fk2xvMW09Wy1yeNW/YHf7Fk2xvMW09Wy1yeNW -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b016/importcfg -pack /usr/local/go/src/internal/runtime/exithook/hooks.go
cp $WORK/b017/_pkg_.a /home/eclesiomelo/.cache/go-build/12/125e23b5f71ceee7f3cf5a16bb147d4bfdab1755abda9b211ad8a291c84bbaf2-d # internal
cat >/tmp/xp1/b006/importcfg << 'EOF' # internal
# import config
packagefile internal/cpu=/tmp/xp1/b007/_pkg_.a
EOF
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b006/_pkg_.a -trimpath "$WORK/b006=>" -p internal/bytealg -lang=go1.23 -std -buildid q-tjztJhTxcmMClZ8ZI3/q-tjztJhTxcmMClZ8ZI3 -goversion go1.23.6 -symabis $WORK/b006/symabis -c=4 -nolocalimports -importcfg $WORK/b006/importcfg -pack -asmhdr $WORK/b006/go_asm.h /usr/local/go/src/internal/bytealg/bytealg.go /usr/local/go/src/internal/bytealg/compare_native.go /usr/local/go/src/internal/bytealg/count_native.go /usr/local/go/src/internal/bytealg/equal_generic.go /usr/local/go/src/internal/bytealg/equal_native.go /usr/local/go/src/internal/bytealg/index_generic.go /usr/local/go/src/internal/bytealg/indexbyte_native.go /usr/local/go/src/internal/bytealg/lastindexbyte_generic.go
cd /usr/local/go/src/internal/chacha8rand
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/chacha8rand -trimpath "$WORK/b008=>" -I $WORK/b008/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b008/chacha8_stub.o ./chacha8_stub.s
/usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b008/_pkg_.a $WORK/b008/chacha8_stub.o # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b008/_pkg_.a # internal
cp $WORK/b008/_pkg_.a /home/eclesiomelo/.cache/go-build/10/1066b88849198686509880e132a3d72c9027a1d9f6780a15cf1ac2d77e6443f4-d # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b016/_pkg_.a # internal
cp $WORK/b016/_pkg_.a /home/eclesiomelo/.cache/go-build/d3/d3ad3b3110b9aed7b2738173a7681ba230699aeccc9724ee3fdcdad326a6e9cf-d # internal
cd /usr/local/go/src/internal/bytealg
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/bytealg -trimpath "$WORK/b006=>" -I $WORK/b006/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b006/compare_riscv64.o ./compare_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/bytealg -trimpath "$WORK/b006=>" -I $WORK/b006/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b006/count_riscv64.o ./count_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/bytealg -trimpath "$WORK/b006=>" -I $WORK/b006/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b006/equal_riscv64.o ./equal_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/bytealg -trimpath "$WORK/b006=>" -I $WORK/b006/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b006/indexbyte_riscv64.o ./indexbyte_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b006/_pkg_.a $WORK/b006/compare_riscv64.o $WORK/b006/count_riscv64.o $WORK/b006/equal_riscv64.o $WORK/b006/indexbyte_riscv64.o # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b006/_pkg_.a # internal
cp $WORK/b006/_pkg_.a /home/eclesiomelo/.cache/go-build/cb/cbbac791c81d5d6f31aa2e53b55fa364b838d84bb0caefbd63eeb8707e417c71-d # internal
mkdir -p $WORK/b018/
cat >/tmp/xp1/b018/importcfg << 'EOF' # internal
# import config
packagefile internal/bytealg=/tmp/xp1/b006/_pkg_.a
EOF
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b018/_pkg_.a -trimpath "$WORK/b018=>" -p internal/stringslite -lang=go1.23 -std -complete -buildid 69uFGkqOUC18lcGxEfAl/69uFGkqOUC18lcGxEfAl -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b018/importcfg -pack /usr/local/go/src/internal/stringslite/strings.go
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b018/_pkg_.a # internal
cp $WORK/b018/_pkg_.a /home/eclesiomelo/.cache/go-build/70/702b671c905e30d84ed05ee1dd9a394a4161ea7eb6ec2741e51a2cd1d5934da6-d # internal
cd /usr/local/go/src/internal/abi
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/abi -trimpath "$WORK/b003=>" -I $WORK/b003/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b003/abi_test.o ./abi_test.s
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/abi -trimpath "$WORK/b003=>" -I $WORK/b003/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b003/stub.o ./stub.s
/usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b003/_pkg_.a $WORK/b003/abi_test.o $WORK/b003/stub.o # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b003/_pkg_.a # internal
cp $WORK/b003/_pkg_.a /home/eclesiomelo/.cache/go-build/45/4577767a16333159bc9fc96dc37086c79cf333181885f48e8d897e42f1916ceb-d # internal
mkdir -p $WORK/b002/
echo -n > $WORK/b002/go_asm.h # internal
cd /usr/local/go/src/runtime
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b002/symabis ./asm.s ./asm_riscv64.s ./atomic_riscv64.s ./duff_riscv64.s ./memclr_riscv64.s ./memmove_riscv64.s ./preempt_riscv64.s ./rt0_linux_riscv64.s ./sys_linux_riscv64.s ./tls_riscv64.s
cat >/tmp/xp1/b002/importcfg << 'EOF' # internal
# import config
packagefile internal/abi=/tmp/xp1/b003/_pkg_.a
packagefile internal/bytealg=/tmp/xp1/b006/_pkg_.a
packagefile internal/chacha8rand=/tmp/xp1/b008/_pkg_.a
packagefile internal/coverage/rtcov=/tmp/xp1/b010/_pkg_.a
packagefile internal/cpu=/tmp/xp1/b007/_pkg_.a
packagefile internal/goarch=/tmp/xp1/b004/_pkg_.a
packagefile internal/godebugs=/tmp/xp1/b011/_pkg_.a
packagefile internal/goexperiment=/tmp/xp1/b012/_pkg_.a
packagefile internal/goos=/tmp/xp1/b013/_pkg_.a
packagefile internal/profilerecord=/tmp/xp1/b014/_pkg_.a
packagefile internal/runtime/atomic=/tmp/xp1/b015/_pkg_.a
packagefile internal/runtime/exithook=/tmp/xp1/b016/_pkg_.a
packagefile internal/runtime/syscall=/tmp/xp1/b017/_pkg_.a
packagefile internal/stringslite=/tmp/xp1/b018/_pkg_.a
packagefile runtime/internal/math=/tmp/xp1/b019/_pkg_.a
packagefile runtime/internal/sys=/tmp/xp1/b020/_pkg_.a
EOF
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b002/_pkg_.a -trimpath "$WORK/b002=>" -p runtime -lang=go1.23 -std -buildid e08uw_ypJBUjAyYpeDUP/e08uw_ypJBUjAyYpeDUP -goversion go1.23.6 -symabis $WORK/b002/symabis -c=4 -nolocalimports -importcfg $WORK/b002/importcfg -pack -asmhdr $WORK/b002/go_asm.h /usr/local/go/src/runtime/alg.go /usr/local/go/src/runtime/arena.go /usr/local/go/src/runtime/asan0.go /usr/local/go/src/runtime/atomic_pointer.go /usr/local/go/src/runtime/badlinkname.go /usr/local/go/src/runtime/cgo.go /usr/local/go/src/runtime/cgocall.go /usr/local/go/src/runtime/cgocallback.go /usr/local/go/src/runtime/cgocheck.go /usr/local/go/src/runtime/chan.go /usr/local/go/src/runtime/checkptr.go /usr/local/go/src/runtime/compiler.go /usr/local/go/src/runtime/complex.go /usr/local/go/src/runtime/coro.go /usr/local/go/src/runtime/covercounter.go /usr/local/go/src/runtime/covermeta.go /usr/local/go/src/runtime/cpuflags.go /usr/local/go/src/runtime/cpuprof.go /usr/local/go/src/runtime/cputicks.go /usr/local/go/src/runtime/create_file_unix.go /usr/local/go/src/runtime/debug.go /usr/local/go/src/runtime/debuglog.go /usr/local/go/src/runtime/debuglog_off.go /usr/local/go/src/runtime/defs_linux_riscv64.go /usr/local/go/src/runtime/env_posix.go /usr/local/go/src/runtime/error.go /usr/local/go/src/runtime/extern.go /usr/local/go/src/runtime/fastlog2.go /usr/local/go/src/runtime/fastlog2table.go /usr/local/go/src/runtime/fds_unix.go /usr/local/go/src/runtime/float.go /usr/local/go/src/runtime/hash64.go /usr/local/go/src/runtime/heapdump.go /usr/local/go/src/runtime/histogram.go /usr/local/go/src/runtime/iface.go /usr/local/go/src/runtime/lfstack.go /usr/local/go/src/runtime/linkname.go /usr/local/go/src/runtime/linkname_unix.go /usr/local/go/src/runtime/lock_futex.go /usr/local/go/src/runtime/lockrank.go /usr/local/go/src/runtime/lockrank_off.go /usr/local/go/src/runtime/malloc.go /usr/local/go/src/runtime/map.go /usr/local/go/src/runtime/map_fast32.go /usr/local/go/src/runtime/map_fast64.go /usr/local/go/src/runtime/map_faststr.go /usr/local/go/src/runtime/mbarrier.go /usr/local/go/src/runtime/mbitmap.go /usr/local/go/src/runtime/mcache.go /usr/local/go/src/runtime/mcentral.go /usr/local/go/src/runtime/mcheckmark.go /usr/local/go/src/runtime/mem.go /usr/local/go/src/runtime/mem_linux.go /usr/local/go/src/runtime/metrics.go /usr/local/go/src/runtime/mfinal.go /usr/local/go/src/runtime/mfixalloc.go /usr/local/go/src/runtime/mgc.go /usr/local/go/src/runtime/mgclimit.go /usr/local/go/src/runtime/mgcmark.go /usr/local/go/src/runtime/mgcpacer.go /usr/local/go/src/runtime/mgcscavenge.go /usr/local/go/src/runtime/mgcstack.go /usr/local/go/src/runtime/mgcsweep.go /usr/local/go/src/runtime/mgcwork.go /usr/local/go/src/runtime/mheap.go /usr/local/go/src/runtime/minmax.go /usr/local/go/src/runtime/mmap.go /usr/local/go/src/runtime/mpagealloc.go /usr/local/go/src/runtime/mpagealloc_64bit.go /usr/local/go/src/runtime/mpagecache.go /usr/local/go/src/runtime/mpallocbits.go /usr/local/go/src/runtime/mprof.go /usr/local/go/src/runtime/mranges.go /usr/local/go/src/runtime/msan0.go /usr/local/go/src/runtime/msize.go /usr/local/go/src/runtime/mspanset.go /usr/local/go/src/runtime/mstats.go /usr/local/go/src/runtime/mwbbuf.go /usr/local/go/src/runtime/nbpipe_pipe2.go /usr/local/go/src/runtime/netpoll.go /usr/local/go/src/runtime/netpoll_epoll.go /usr/local/go/src/runtime/nonwindows_stub.go /usr/local/go/src/runtime/os_linux.go /usr/local/go/src/runtime/os_linux_generic.go /usr/local/go/src/runtime/os_linux_noauxv.go /usr/local/go/src/runtime/os_linux_riscv64.go /usr/local/go/src/runtime/os_nonopenbsd.go /usr/local/go/src/runtime/os_unix.go /usr/local/go/src/runtime/panic.go /usr/local/go/src/runtime/pinner.go /usr/local/go/src/runtime/plugin.go /usr/local/go/src/runtime/preempt.go /usr/local/go/src/runtime/preempt_nonwindows.go /usr/local/go/src/runtime/print.go /usr/local/go/src/runtime/proc.go /usr/local/go/src/runtime/profbuf.go /usr/local/go/src/runtime/proflabel.go /usr/local/go/src/runtime/race0.go /usr/local/go/src/runtime/rand.go /usr/local/go/src/runtime/rdebug.go /usr/local/go/src/runtime/retry.go /usr/local/go/src/runtime/runtime.go /usr/local/go/src/runtime/runtime1.go /usr/local/go/src/runtime/runtime2.go /usr/local/go/src/runtime/runtime_boring.go /usr/local/go/src/runtime/rwmutex.go /usr/local/go/src/runtime/security_linux.go /usr/local/go/src/runtime/security_unix.go /usr/local/go/src/runtime/select.go /usr/local/go/src/runtime/sema.go /usr/local/go/src/runtime/sigaction.go /usr/local/go/src/runtime/signal_linux_riscv64.go /usr/local/go/src/runtime/signal_riscv64.go /usr/local/go/src/runtime/signal_unix.go /usr/local/go/src/runtime/sigqueue.go /usr/local/go/src/runtime/sigqueue_note.go /usr/local/go/src/runtime/sigtab_linux_generic.go /usr/local/go/src/runtime/sizeclasses.go /usr/local/go/src/runtime/slice.go /usr/local/go/src/runtime/softfloat64.go /usr/local/go/src/runtime/stack.go /usr/local/go/src/runtime/stkframe.go /usr/local/go/src/runtime/string.go /usr/local/go/src/runtime/stubs.go /usr/local/go/src/runtime/stubs2.go /usr/local/go/src/runtime/stubs3.go /usr/local/go/src/runtime/stubs_linux.go /usr/local/go/src/runtime/stubs_riscv64.go /usr/local/go/src/runtime/symtab.go /usr/local/go/src/runtime/symtabinl.go /usr/local/go/src/runtime/sys_nonppc64x.go /usr/local/go/src/runtime/sys_riscv64.go /usr/local/go/src/runtime/tagptr.go /usr/local/go/src/runtime/tagptr_64bit.go /usr/local/go/src/runtime/test_stubs.go /usr/local/go/src/runtime/time.go /usr/local/go/src/runtime/time_nofake.go /usr/local/go/src/runtime/timestub.go /usr/local/go/src/runtime/timestub2.go /usr/local/go/src/runtime/tls_stub.go /usr/local/go/src/runtime/trace.go /usr/local/go/src/runtime/traceallocfree.go /usr/local/go/src/runtime/traceback.go /usr/local/go/src/runtime/tracebuf.go /usr/local/go/src/runtime/tracecpu.go /usr/local/go/src/runtime/traceevent.go /usr/local/go/src/runtime/traceexp.go /usr/local/go/src/runtime/tracemap.go /usr/local/go/src/runtime/traceregion.go /usr/local/go/src/runtime/traceruntime.go /usr/local/go/src/runtime/tracestack.go /usr/local/go/src/runtime/tracestatus.go /usr/local/go/src/runtime/tracestring.go /usr/local/go/src/runtime/tracetime.go /usr/local/go/src/runtime/tracetype.go /usr/local/go/src/runtime/type.go /usr/local/go/src/runtime/typekind.go /usr/local/go/src/runtime/unsafe.go /usr/local/go/src/runtime/utf8.go /usr/local/go/src/runtime/vdso_elf64.go /usr/local/go/src/runtime/vdso_linux.go /usr/local/go/src/runtime/vdso_linux_riscv64.go /usr/local/go/src/runtime/write_err.go
cd /usr/local/go/src/runtime
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b002/asm.o ./asm.s
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b002/asm_riscv64.o ./asm_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b002/atomic_riscv64.o ./atomic_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b002/duff_riscv64.o ./duff_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b002/memclr_riscv64.o ./memclr_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b002/memmove_riscv64.o ./memmove_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b002/preempt_riscv64.o ./preempt_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b002/rt0_linux_riscv64.o ./rt0_linux_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b002/sys_linux_riscv64.o ./sys_linux_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/asm -p runtime -trimpath "$WORK/b002=>" -I $WORK/b002/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b002/tls_riscv64.o ./tls_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b002/_pkg_.a $WORK/b002/asm.o $WORK/b002/asm_riscv64.o $WORK/b002/atomic_riscv64.o $WORK/b002/duff_riscv64.o $WORK/b002/memclr_riscv64.o $WORK/b002/memmove_riscv64.o $WORK/b002/preempt_riscv64.o $WORK/b002/rt0_linux_riscv64.o $WORK/b002/sys_linux_riscv64.o $WORK/b002/tls_riscv64.o # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b002/_pkg_.a # internal
cp $WORK/b002/_pkg_.a /home/eclesiomelo/.cache/go-build/4f/4fbe768f31d89931975235c43aa407771aba4d3aa506cc8ee970c8b237f1210a-d # internal
mkdir -p $WORK/b027/
mkdir -p $WORK/b022/
echo -n > $WORK/b027/go_asm.h # internal
cd /usr/local/go/src/internal/reflectlite
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/reflectlite -trimpath "$WORK/b027=>" -I $WORK/b027/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b027/symabis ./asm.s
cat >/tmp/xp1/b022/importcfg << 'EOF' # internal
# import config
packagefile internal/race=/tmp/xp1/b023/_pkg_.a
packagefile runtime=/tmp/xp1/b002/_pkg_.a
packagefile sync/atomic=/tmp/xp1/b024/_pkg_.a
EOF
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b022/_pkg_.a -trimpath "$WORK/b022=>" -p sync -lang=go1.23 -std -buildid WZ8S2KqTB3EWi53oBSu9/WZ8S2KqTB3EWi53oBSu9 -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b022/importcfg -pack /usr/local/go/src/sync/cond.go /usr/local/go/src/sync/map.go /usr/local/go/src/sync/mutex.go /usr/local/go/src/sync/once.go /usr/local/go/src/sync/oncefunc.go /usr/local/go/src/sync/pool.go /usr/local/go/src/sync/poolqueue.go /usr/local/go/src/sync/runtime.go /usr/local/go/src/sync/runtime2.go /usr/local/go/src/sync/rwmutex.go /usr/local/go/src/sync/waitgroup.go
cat >/tmp/xp1/b027/importcfg << 'EOF' # internal
# import config
packagefile internal/abi=/tmp/xp1/b003/_pkg_.a
packagefile internal/goarch=/tmp/xp1/b004/_pkg_.a
packagefile internal/unsafeheader=/tmp/xp1/b028/_pkg_.a
packagefile runtime=/tmp/xp1/b002/_pkg_.a
EOF
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b027/_pkg_.a -trimpath "$WORK/b027=>" -p internal/reflectlite -lang=go1.23 -std -buildid HnFkRZJVzmQdf28uGrY4/HnFkRZJVzmQdf28uGrY4 -goversion go1.23.6 -symabis $WORK/b027/symabis -c=4 -nolocalimports -importcfg $WORK/b027/importcfg -pack -asmhdr $WORK/b027/go_asm.h /usr/local/go/src/internal/reflectlite/swapper.go /usr/local/go/src/internal/reflectlite/type.go /usr/local/go/src/internal/reflectlite/value.go
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b022/_pkg_.a # internal
cp $WORK/b022/_pkg_.a /home/eclesiomelo/.cache/go-build/b3/b30c045922a058d500ab01692c02617238e9fa2e03a318d0a0ed4e8e157cdb67-d # internal
cd /usr/local/go/src/internal/reflectlite
/usr/local/go/pkg/tool/linux_amd64/asm -p internal/reflectlite -trimpath "$WORK/b027=>" -I $WORK/b027/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b027/asm.o ./asm.s
/usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b027/_pkg_.a $WORK/b027/asm.o # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b027/_pkg_.a # internal
mkdir -p $WORK/b021/
cd /usr/local/go/src/runtime/cgo
TERM='dumb' CGO_LDFLAGS='' /usr/local/go/pkg/tool/linux_amd64/cgo -objdir $WORK/b021/ -importpath runtime/cgo -import_runtime_cgo=false -import_syscall=false "-ldflags=\"-O2\" \"-g\" \"-lpthread\"" -- -I $WORK/b021/ -fPIC -O2 -g -Wall -Werror -fno-stack-protector ./cgo.go
cp $WORK/b027/_pkg_.a /home/eclesiomelo/.cache/go-build/09/09f83e1739879488659dcb0e66b7d1deaf02465918758ef6e2c878df14799048-d # internal
mkdir -p $WORK/b026/
cat >/tmp/xp1/b026/importcfg << 'EOF' # internal
# import config
packagefile internal/reflectlite=/tmp/xp1/b027/_pkg_.a
EOF
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b026/_pkg_.a -trimpath "$WORK/b026=>" -p errors -lang=go1.23 -std -complete -buildid jXH93yOQBHM4eSc31Cmo/jXH93yOQBHM4eSc31Cmo -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b026/importcfg -pack /usr/local/go/src/errors/errors.go /usr/local/go/src/errors/join.go /usr/local/go/src/errors/wrap.go
cd $WORK
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b026/_pkg_.a # internal
cp $WORK/b026/_pkg_.a /home/eclesiomelo/.cache/go-build/05/05bc3b8d94f08ce3b9bbf80c42697b446615446c26a28580ac53462feed8f0cf-d # internal

mkdir -p $WORK/b032/
cat >/tmp/xp1/b032/importcfg << 'EOF' # internal
# import config
packagefile errors=/tmp/xp1/b026/_pkg_.a
EOF
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b032/_pkg_.a -trimpath "$WORK/b032=>" -p internal/oserror -lang=go1.23 -std -complete -buildid LHai_CqI7MdeXemKUiN4/LHai_CqI7MdeXemKUiN4 -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b032/importcfg -pack /usr/local/go/src/internal/oserror/errors.go
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b032/_pkg_.a # internal
cp $WORK/b032/_pkg_.a /home/eclesiomelo/.cache/go-build/56/56fc9df806293f5252e94a5276a799fc0b50b80acace7a2d57784dfe716f73f8-d # internal
cd $WORK

mkdir -p $WORK/b025/
echo -n > $WORK/b025/go_asm.h # internal
cd /usr/local/go/src/syscall
/usr/local/go/pkg/tool/linux_amd64/asm -p syscall -trimpath "$WORK/b025=>" -I $WORK/b025/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b025/symabis ./asm_linux_riscv64.s
cat >/tmp/xp1/b025/importcfg << 'EOF' # internal
# import config
packagefile errors=/tmp/xp1/b026/_pkg_.a
packagefile internal/asan=/tmp/xp1/b029/_pkg_.a
packagefile internal/bytealg=/tmp/xp1/b006/_pkg_.a
packagefile internal/byteorder=/tmp/xp1/b009/_pkg_.a
packagefile internal/goarch=/tmp/xp1/b004/_pkg_.a
packagefile internal/itoa=/tmp/xp1/b030/_pkg_.a
packagefile internal/msan=/tmp/xp1/b031/_pkg_.a
packagefile internal/oserror=/tmp/xp1/b032/_pkg_.a
packagefile internal/race=/tmp/xp1/b023/_pkg_.a
packagefile internal/runtime/syscall=/tmp/xp1/b017/_pkg_.a
packagefile runtime=/tmp/xp1/b002/_pkg_.a
packagefile sync=/tmp/xp1/b022/_pkg_.a
packagefile sync/atomic=/tmp/xp1/b024/_pkg_.a
EOF
cd /home/eclesiomelo/p/gollvm-test
/usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b025/_pkg_.a -trimpath "$WORK/b025=>" -p syscall -lang=go1.23 -std -buildid sUdySjVcARuRqJnvZ98b/sUdySjVcARuRqJnvZ98b -goversion go1.23.6 -symabis $WORK/b025/symabis -c=4 -nolocalimports -importcfg $WORK/b025/importcfg -pack -asmhdr $WORK/b025/go_asm.h /usr/local/go/src/syscall/badlinkname_unix.go /usr/local/go/src/syscall/dirent.go /usr/local/go/src/syscall/env_unix.go /usr/local/go/src/syscall/exec_linux.go /usr/local/go/src/syscall/exec_unix.go /usr/local/go/src/syscall/flock_linux.go /usr/local/go/src/syscall/forkpipe2.go /usr/local/go/src/syscall/linkname_unix.go /usr/local/go/src/syscall/lsf_linux.go /usr/local/go/src/syscall/net.go /usr/local/go/src/syscall/netlink_linux.go /usr/local/go/src/syscall/rlimit.go /usr/local/go/src/syscall/rlimit_stub.go /usr/local/go/src/syscall/setuidgid_linux.go /usr/local/go/src/syscall/sockcmsg_linux.go /usr/local/go/src/syscall/sockcmsg_unix.go /usr/local/go/src/syscall/sockcmsg_unix_other.go /usr/local/go/src/syscall/syscall.go /usr/local/go/src/syscall/syscall_linux.go /usr/local/go/src/syscall/syscall_linux_accept4.go /usr/local/go/src/syscall/syscall_linux_riscv64.go /usr/local/go/src/syscall/syscall_unix.go /usr/local/go/src/syscall/time_nofake.go /usr/local/go/src/syscall/timestruct.go /usr/local/go/src/syscall/zerrors_linux_riscv64.go /usr/local/go/src/syscall/zsyscall_linux_riscv64.go /usr/local/go/src/syscall/zsysnum_linux_riscv64.go /usr/local/go/src/syscall/ztypes_linux_riscv64.go
cd $WORK

cd $WORK/b021
TERM='dumb' riscv64-unknown-elf-gcc -I /usr/local/go/src/runtime/cgo -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x001.o -c _cgo_export.c
TERM='dumb' riscv64-unknown-elf-gcc -I /usr/local/go/src/runtime/cgo -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x002.o -c cgo.cgo2.c
cd /usr/local/go/src/runtime/cgo
TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x003.o -c gcc_context.c
TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x004.o -c gcc_fatalf.c
TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x005.o -c gcc_libinit.c
TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x006.o -c gcc_linux.c
cd /usr/local/go/src/syscall
/usr/local/go/pkg/tool/linux_amd64/asm -p syscall -trimpath "$WORK/b025=>" -I $WORK/b025/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b025/asm_linux_riscv64.o ./asm_linux_riscv64.s
/usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b025/_pkg_.a $WORK/b025/asm_linux_riscv64.o # internal
/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b025/_pkg_.a # internal
cp $WORK/b025/_pkg_.a /home/eclesiomelo/.cache/go-build/10/10b29ebd1984e9298636fe077531f299a9154c4da96dc4c8a88522fe073d650e-d # internal
cd /usr/local/go/src/runtime/cgo
TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x007.o -c gcc_setenv.c
TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x008.o -c gcc_stack_unix.c
TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x009.o -c gcc_traceback.c
TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x010.o -c gcc_util.c
TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x011.o -c linux_syscall.c
TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_x012.o -c gcc_riscv64.S
cd $WORK/b021
TERM='dumb' riscv64-unknown-elf-gcc -I /usr/local/go/src/runtime/cgo -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,gcc,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -I $WORK/b021/ -fPIC -mabi=lp64d -O2 -g -Wall -Werror -fno-stack-protector -ffile-prefix-map=/usr/local/go=/_/GOROOT -frandom-seed=pA6Lnje4RlKwUb1k9Fpj -o $WORK/b021/_cgo_main.o -c _cgo_main.c
cd /home/eclesiomelo/p/gollvm-test
TERM='dumb' riscv64-unknown-elf-gcc -I /usr/local/go/src/runtime/cgo -L /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -Xlinker --trace -Xlinker --verbose -Xlinker -L /usr/lib -Xlinker -L /usr/riscv64-linux-gnu/lib  -Xlinker -L /usr/local/lib -Xlinker -L /usr/local/lib -Xlinker -L /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fmessage-length=0 -ffile-prefix-map=$WORK/b021=/tmp/go-build -gno-record-gcc-switches -o $WORK/b021/_cgo_.o $WORK/b021/_cgo_main.o $WORK/b021/_x001.o $WORK/b021/_x002.o $WORK/b021/_x003.o $WORK/b021/_x004.o $WORK/b021/_x005.o $WORK/b021/_x006.o $WORK/b021/_x007.o $WORK/b021/_x008.o $WORK/b021/_x009.o $WORK/b021/_x010.o $WORK/b021/_x011.o $WORK/b021/_x012.o

echo "Task completed"
exit 0

# TERM='dumb' /usr/local/go/pkg/tool/linux_amd64/cgo -dynpackage cgo -dynimport $WORK/b021/_cgo_.o -dynout $WORK/b021/_cgo_import.go -dynlinker
# echo -n > $WORK/b021/go_asm.h # internal
# cd /usr/local/go/src/runtime/cgo
# /usr/local/go/pkg/tool/linux_amd64/asm -p runtime/cgo -trimpath "$WORK/b021=>" -I $WORK/b021/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -gensymabis -o $WORK/b021/symabis ./asm_riscv64.s
# cat >/tmp/xp1/b021/importcfg << 'EOF' # internal
# # import config
# packagefile runtime/internal/sys=/tmp/xp1/b020/_pkg_.a
# packagefile sync=/tmp/xp1/b022/_pkg_.a
# packagefile sync/atomic=/tmp/xp1/b024/_pkg_.a
# EOF
# cd /home/eclesiomelo/p/gollvm-test
# /usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b021/_pkg_.a -trimpath "$WORK/b021=>" -p runtime/cgo -lang=go1.23 -std -buildid pA6Lnje4RlKwUb1k9Fpj/pA6Lnje4RlKwUb1k9Fpj -goversion go1.23.6 -symabis $WORK/b021/symabis -c=4 -nolocalimports -importcfg $WORK/b021/importcfg -pack -asmhdr $WORK/b021/go_asm.h /usr/local/go/src/runtime/cgo/callbacks.go /usr/local/go/src/runtime/cgo/callbacks_traceback.go /usr/local/go/src/runtime/cgo/handle.go /usr/local/go/src/runtime/cgo/iscgo.go /usr/local/go/src/runtime/cgo/linux.go /usr/local/go/src/runtime/cgo/setenv.go $WORK/b021/_cgo_gotypes.go $WORK/b021/cgo.cgo1.go $WORK/b021/_cgo_import.go
# cd /usr/local/go/src/runtime/cgo
# /usr/local/go/pkg/tool/linux_amd64/asm -p runtime/cgo -trimpath "$WORK/b021=>" -I $WORK/b021/ -I /usr/local/go/pkg/include -D GOOS_linux -D GOARCH_riscv64 -D GORISCV64_rva20u64 -o $WORK/b021/asm_riscv64.o ./asm_riscv64.s
# /usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b021/_pkg_.a $WORK/b021/asm_riscv64.o $WORK/b021/_x001.o $WORK/b021/_x002.o $WORK/b021/_x003.o $WORK/b021/_x004.o $WORK/b021/_x005.o $WORK/b021/_x006.o $WORK/b021/_x007.o $WORK/b021/_x008.o $WORK/b021/_x009.o $WORK/b021/_x010.o $WORK/b021/_x011.o $WORK/b021/_x012.o # internal
# /usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b021/_pkg_.a # internal
# cp $WORK/b021/_pkg_.a /home/eclesiomelo/.cache/go-build/39/391783f86a0dbc8edcc2eab9fd09523a6b10b3de9be7438666d89ec8477dbdaa-d # internal
# mkdir -p $WORK/b001/
# cd /home/eclesiomelo/p/gollvm-test
# TERM='dumb' CGO_LDFLAGS='' /usr/local/go/pkg/tool/linux_amd64/cgo -objdir $WORK/b001/ -importpath command-line-arguments "-ldflags=\"-O2\" \"-g\"" -- -I $WORK/b001/ -fPIC -O2 -g ./goriscv.go
# cd $WORK/b001
# TERM='dumb' riscv64-unknown-elf-gcc -I /home/eclesiomelo/p/gollvm-test -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b001=/tmp/go-build -gno-record-gcc-switches -I $WORK/b001/ -fPIC -mabi=lp64d -O2 -g -frandom-seed=VYYLXk8ZM6j55WQNflXn -o $WORK/b001/_x001.o -c _cgo_export.c
# TERM='dumb' riscv64-unknown-elf-gcc -I /home/eclesiomelo/p/gollvm-test -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b001=/tmp/go-build -gno-record-gcc-switches -I $WORK/b001/ -fPIC -mabi=lp64d -O2 -g -frandom-seed=VYYLXk8ZM6j55WQNflXn -o $WORK/b001/_x002.o -c goriscv.cgo2.c
# TERM='dumb' riscv64-unknown-elf-gcc -I /home/eclesiomelo/p/gollvm-test -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections -fmessage-length=0 -ffile-prefix-map=$WORK/b001=/tmp/go-build -gno-record-gcc-switches -I $WORK/b001/ -fPIC -mabi=lp64d -O2 -g -frandom-seed=VYYLXk8ZM6j55WQNflXn -o $WORK/b001/_cgo_main.o -c _cgo_main.c
# cd /home/eclesiomelo/p/gollvm-test
# TERM='dumb' riscv64-unknown-elf-gcc -I . -I /usr/riscv64-linux-gnu/include -I /usr/lib/gcc/riscv64-unknown-elf/13.2.0 -fPIC -Wl,--no-gc-sections, -Xlinker="--trace,--verbose" -fmessage-length=0 -ffile-prefix-map=$WORK/b001=/tmp/go-build -gno-record-gcc-switches -o $WORK/b001/_cgo_.o $WORK/b001/_cgo_main.o $WORK/b001/_x001.o $WORK/b001/_x002.o

# echo "Task completed"
# exit 0

# TERM='dumb' /usr/local/go/pkg/tool/linux_amd64/cgo -dynpackage main -dynimport $WORK/b001/_cgo_.o -dynout $WORK/b001/_cgo_import.go
# cat >/tmp/xp1/b001/importcfg << 'EOF' # internal
# # import config
# packagefile runtime=/tmp/xp1/b002/_pkg_.a
# packagefile runtime/cgo=/tmp/xp1/b021/_pkg_.a
# packagefile syscall=/tmp/xp1/b025/_pkg_.a
# EOF
# /usr/local/go/pkg/tool/linux_amd64/compile -o $WORK/b001/_pkg_.a -trimpath "$WORK/b001=>" -p main -lang=go1.23 -buildid VYYLXk8ZM6j55WQNflXn/VYYLXk8ZM6j55WQNflXn -goversion go1.23.6 -c=4 -nolocalimports -importcfg $WORK/b001/importcfg -pack $WORK/b001/_cgo_gotypes.go $WORK/b001/goriscv.cgo1.go $WORK/b001/_cgo_import.go
# /usr/local/go/pkg/tool/linux_amd64/pack r $WORK/b001/_pkg_.a $WORK/b001/_x001.o $WORK/b001/_x002.o # internal
# /usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b001/_pkg_.a # internal
# cp $WORK/b001/_pkg_.a /home/eclesiomelo/.cache/go-build/0b/0b50387c0d9d25df94b47bb61674061fe71dfdc3295cadb820a712d3d0ea3788-d # internal
# cat >/tmp/xp1/b001/importcfg.link << 'EOF' # internal
# packagefile command-line-arguments=/tmp/xp1/b001/_pkg_.a
# packagefile runtime=/tmp/xp1/b002/_pkg_.a
# packagefile runtime/cgo=/tmp/xp1/b021/_pkg_.a
# packagefile syscall=/tmp/xp1/b025/_pkg_.a
# packagefile internal/abi=/tmp/xp1/b003/_pkg_.a
# packagefile internal/bytealg=/tmp/xp1/b006/_pkg_.a
# packagefile internal/chacha8rand=/tmp/xp1/b008/_pkg_.a
# packagefile internal/coverage/rtcov=/tmp/xp1/b010/_pkg_.a
# packagefile internal/cpu=/tmp/xp1/b007/_pkg_.a
# packagefile internal/goarch=/tmp/xp1/b004/_pkg_.a
# packagefile internal/godebugs=/tmp/xp1/b011/_pkg_.a
# packagefile internal/goexperiment=/tmp/xp1/b012/_pkg_.a
# packagefile internal/goos=/tmp/xp1/b013/_pkg_.a
# packagefile internal/profilerecord=/tmp/xp1/b014/_pkg_.a
# packagefile internal/runtime/atomic=/tmp/xp1/b015/_pkg_.a
# packagefile internal/runtime/exithook=/tmp/xp1/b016/_pkg_.a
# packagefile internal/runtime/syscall=/tmp/xp1/b017/_pkg_.a
# packagefile internal/stringslite=/tmp/xp1/b018/_pkg_.a
# packagefile runtime/internal/math=/tmp/xp1/b019/_pkg_.a
# packagefile runtime/internal/sys=/tmp/xp1/b020/_pkg_.a
# packagefile sync=/tmp/xp1/b022/_pkg_.a
# packagefile sync/atomic=/tmp/xp1/b024/_pkg_.a
# packagefile errors=/tmp/xp1/b026/_pkg_.a
# packagefile internal/asan=/tmp/xp1/b029/_pkg_.a
# packagefile internal/byteorder=/tmp/xp1/b009/_pkg_.a
# packagefile internal/itoa=/tmp/xp1/b030/_pkg_.a
# packagefile internal/msan=/tmp/xp1/b031/_pkg_.a
# packagefile internal/oserror=/tmp/xp1/b032/_pkg_.a
# packagefile internal/race=/tmp/xp1/b023/_pkg_.a
# packagefile internal/reflectlite=/tmp/xp1/b027/_pkg_.a
# packagefile internal/unsafeheader=/tmp/xp1/b028/_pkg_.a
# modinfo "0w\xaf\f\x92t\b\x02A\xe1\xc1\a\xe6\xd6\x18\xe6path\tcommand-line-arguments\nbuild\t-buildmode=exe\nbuild\t-compiler=gc\nbuild\tCGO_ENABLED=1\nbuild\tCGO_CFLAGS=\"-fPIC -mabi=lp64d -O2 -g\"\nbuild\tCGO_CPPFLAGS=\nbuild\tCGO_CXXFLAGS=\nbuild\tCGO_LDFLAGS=\nbuild\tGOARCH=riscv64\nbuild\tGOOS=linux\nbuild\tGORISCV64=rva20u64\n\xf92C1\x86\x18 r\x00\x82B\x10A\x16\xd8\xf2"
# EOF
# mkdir -p $WORK/b001/exe/
# cd .
# GOROOT='/usr/local/go' /usr/local/go/pkg/tool/linux_amd64/link -o $WORK/b001/exe/a.out -importcfg $WORK/b001/importcfg.link -buildmode=exe -buildid=DMgaRoamAGUG2lhR8Tyj/VYYLXk8ZM6j55WQNflXn/Y4kEvM-CS5SwLI6fAIwr/DMgaRoamAGUG2lhR8Tyj -extld=riscv64-unknown-elf-ld $WORK/b001/_pkg_.a
# #/usr/local/go/pkg/tool/linux_amd64/buildid -w $WORK/b001/exe/a.out # internal
# # mv $WORK/b001/exe/a.out out

# echo "Task completed"
# exit 0