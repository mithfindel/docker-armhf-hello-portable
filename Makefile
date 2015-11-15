ARCH := $(shell arch)
ifeq ($(ARCH),armv7l)
	CC := gcc
else
	CC := arm-linux-gnueabihf-gcc
endif

hello:
	$(CC) -static -O3 hello.c -o hello

clean:
	rm hello

