#include <stdint.h>

void sum(int32_t a, int32_t b) {
  int32_t c = a + b;
}

#ifdef __riscv

#include "polkavm_guest.h"

POLKAVM_EXPORT(void, sum, int, int);

#endif