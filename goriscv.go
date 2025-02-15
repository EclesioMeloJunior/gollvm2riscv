package main

import "runtime"

/*
#include <stdio.h>

void hello(char *goos, char *goarch) {
        printf("Hi from cgo on %s/%s!\n", goos, goarch);
}
*/
import "C"

func main() {
	goos := C.CString(runtime.GOOS)
	goarch := C.CString(runtime.GOARCH)
	C.hello(goos, goarch)
}
