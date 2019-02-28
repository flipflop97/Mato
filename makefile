XDG_DATA_HOME ?= ~/.local/share

BUILD_DIR ?= $(CURDIR)/build
export BUILD_DIR

INSTALL_DIR ?= $(XDG_DATA_HOME)/icons
export INSTALL_DIR

TEMP_DIR ?= /tmp
TEMP_DIR := $(TEMP_DIR)/Mato
export TEMP_DIR

.PHONY: all build install

all: build

build:
	mkdir -p $(TEMP_DIR)
	mkdir -p $(BUILD_DIR)
	$(MAKE) -C src

install:
	mkdir -p $(INSTALL_DIR)/Mato
	rm -rf $(INSTALL_DIR)/Mato
	cp -r $(BUILD_DIR) $(INSTALL_DIR)/Mato

clean:
	rm -rf $(BUILD_DIR)

