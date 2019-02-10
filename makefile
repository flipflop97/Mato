XDG_DATA_HOME ?= ~/.local/share

BUILD_DIR ?= $(CURDIR)/build/
export BUILD_DIR

INSTALL_DIR ?= $(XDG_DATA_HOME)/icon
INSTALL_DIR := $(INSTALL_DIR)/Mato/
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
	mkdir -p $(INSTALL_DIR)
	rm -rf $(INSTALL_DIR)
	cp -r $(BUILD_DIR) $(INSTALL_DIR)

clean:
	rm -rf $(BUILD_DIR)

