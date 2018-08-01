BUILD_FILES = hand2 sb_h_double_arrow sb_v_double_arrow left_ptr left_ptr_watch xterm
LOCAL_DIR = cursors/

.PHONY: all prepare build $(BUILD_FILES)

all: prepare build

prepare:
	mkdir -p $(TEMP_DIR)$(LOCAL_DIR)
	mkdir -p $(BUILD_DIR)$(LOCAL_DIR)

build: $(BUILD_FILES)

$(BUILD_FILES):
	rsvg-convert -w 24 -o $(TEMP_DIR)$(LOCAL_DIR)$@_24.png $@.svg
	rsvg-convert -w 48 -o $(TEMP_DIR)$(LOCAL_DIR)$@_48.png $@.svg
	xcursorgen -p $(TEMP_DIR)$(LOCAL_DIR) $@.in $(BUILD_DIR)$(LOCAL_DIR)$@
