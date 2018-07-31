BUILD_FILES = left_ptr hand2
LOCAL_DIR = cursors/

.PHONY: all prepare build symlink $(BUILD_FILES)

all: prepare build symlink

prepare:
	mkdir -p $(TEMP_DIR)$(LOCAL_DIR)
	mkdir -p $(BUILD_DIR)$(LOCAL_DIR)

build: $(BUILD_FILES)
	
symlink:
	ln -sf left_ptr $(BUILD_DIR)$(LOCAL_DIR)default
	ln -sf hand2    $(BUILD_DIR)$(LOCAL_DIR)hand
	ln -sf hand     $(BUILD_DIR)$(LOCAL_DIR)pointer

$(BUILD_FILES):
	rsvg-convert -w 24 -o $(TEMP_DIR)$(LOCAL_DIR)$@_24.png $@.svg
	rsvg-convert -w 48 -o $(TEMP_DIR)$(LOCAL_DIR)$@_48.png $@.svg
	xcursorgen -p $(TEMP_DIR)$(LOCAL_DIR) $@.in $(BUILD_DIR)$(LOCAL_DIR)$@
