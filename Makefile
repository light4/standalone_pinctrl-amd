ifndef KDIR
	KDIR = /lib/modules/$(shell uname -r)/build
endif
ifndef DRIVER_DIR
	DRIVER_DIR = /lib/modules/$(shell uname -r)/kernel/drivers/pinctrl-amd/
endif

obj-m := pinctrl-amd.o

kbuild:
	make -C $(KDIR) M=$(shell pwd)

install:
	install pinctrl-amd.ko $(DRIVER_DIR)

clean:
	rm -rf *.o *.ko *.a *.mod .*.cmd
	rm -rf modules.order

.PHONY: clean
