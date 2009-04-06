TARGET = vhci-hcd
OBJS = vhci-hcd.o
MDIR = drivers/usb/host

PREFIX =
BUILD_PREFIX = $(PREFIX)
INSTALL_PREFIX = $(PREFIX)
EXTRA_CFLAGS = -DEXPORT_SYMTAB -DKBUILD_EXTMOD -DINCLUDE_CORE_HCD=\"$(KDIR)/drivers/usb/core/hcd.h\"
KVERSION = $(shell uname -r)
KDIR = $(BUILD_PREFIX)/lib/modules/$(KVERSION)/build
PWD = $(shell pwd)
DEST = $(INSTALL_PREFIX)/lib/modules/$(KVERSION)/kernel/$(MDIR)
KSRC = $(KDIR)

# testen, ob von Makefile des Kernel Quellcodeverzeichnisses eingebunden
ifneq ($(KERNELVERSION),)
ifeq ($(shell $(PWD)/scripts/old_giveback_mech $(VERSION) $(PATCHLEVEL) $(SUBLEVEL) $(EXTRAVERSION)),y)
EXTRA_CFLAGS += -DOLD_GIVEBACK_MECH
endif
endif

obj-m      := $(TARGET).o

.PHONY: default install clean patchkernel clean-srcdox srcdox

default:
	make -C $(KDIR) SUBDIRS=$(PWD) PWD=$(PWD) BUILD_PREFIX=$(BUILD_PREFIX) KDIR=$(KDIR) KVERSION=$(KVERSION) modules

#$(TARGET).o: $(OBJS)
#	$(LD) $(LD_RFLAG) -r -o $@ $(OBJS)

ifneq (,$(findstring 2.4.,$(KVERSION)))
ifneq (,$(INSTALL_PREFIX))
install:
	su -c "mkdir -v -p $(DEST) && cp -v $(TARGET).o $(DEST) && /sbin/depmod -a -b $(INSTALL_PREFIX) -v $(KVERSION)"
else
install:
	su -c "mkdir -v -p $(DEST) && cp -v $(TARGET).o $(DEST) && /sbin/depmod -a -v $(KVERSION)"
endif
else
ifneq (,$(INSTALL_PREFIX))
install:
	su -c "mkdir -v -p $(DEST) && cp -v $(TARGET).ko $(DEST) && /sbin/depmod -a -b $(INSTALL_PREFIX) -v $(KVERSION)"
else
install:
	su -c "mkdir -v -p $(DEST) && cp -v $(TARGET).ko $(DEST) && /sbin/depmod -a -v $(KVERSION)"
endif
endif

clean:
	-rm -f *.o *.ko .*.cmd .*.flags *.mod.c Module.symvers
	-rm -rf .tmp_versions/

patchkernel:
	cp -v vhci-hcd.c $(KSRC)/$(MDIR)/
	cp -v vhci-hcd.h $(KSRC)/include/linux/
	cd $(KSRC); patch -Np1 -i $(PWD)/patch/vhci-hcd_compat_ioctl.patch || true
	cd $(KSRC)/$(MDIR); grep -q $(TARGET).o Makefile || echo "obj-\$$(CONFIG_USB_VHCI_HCD)  += $(TARGET).o" >>Makefile
	cd $(KSRC)/$(MDIR); patch -N -i $(PWD)/patch/Kconfig.patch || true

clean-srcdox:
	-rm -rf html/* vhci_hcd.tag

srcdox: clean-srcdox
	doxygen
	-rm -f vhci_hcd.tag

-include $(KDIR)/Rules.make
