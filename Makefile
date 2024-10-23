.NOTPARALLEL:

### Include Config ###
include Rules.make

### Define Global Makerules
all: $(MAKE_ALL_TARGETS)
clean: $(patsubst %,%_clean,$(MAKE_ALL_TARGETS))
install: $(patsubst %,%_install,$(MAKE_ALL_TARGETS))
menuconfig: $(patsubst %,%_menuconfig,$(MAKE_ALL_TARGETS))

list-targets:
	@echo Below targets are supported by the Makefile for PLATFORM=$(PLATFORM)
	@echo $(MAKE_ALL_TARGETS)

### Include MakeRules ###
include makerules/Makefile_*
