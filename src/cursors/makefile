BUILD_FILES = all-scroll dnd-copy dnd-move hand1 hand2 left_ptr left_ptr_watch top_left_corner question_arrow sb_h_double_arrow sb_v_double_arrow top_right_corner xterm zoom-in zoom-out
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
	rsvg-convert -w 72 -o $(TEMP_DIR)$(LOCAL_DIR)$@_72.png $@.svg
	rsvg-convert -w 96 -o $(TEMP_DIR)$(LOCAL_DIR)$@_96.png $@.svg
	echo -e "24 2 2 $@_24.png\n48 4 4 $@_48.png\n72 6 6 $@_72.png\n96 8 8 $@_96.png" |\
	xcursorgen -p $(TEMP_DIR)$(LOCAL_DIR) - $(BUILD_DIR)$(LOCAL_DIR)$@
