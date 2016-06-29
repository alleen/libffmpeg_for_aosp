LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_LDLIBS := -lz -llog
LOCAL_MODULE := libffmpeg
LOCAL_LDFLAGS := -Wl,--no-warn-shared-textrel
#LOCAL_SHARED_LIBRARIES := libx264
LOCAL_WHOLE_STATIC_LIBRARIES := libx264 libavformat libavcodec libavutil libpostproc libswscale libswresample
include $(BUILD_SHARED_LIBRARY)
include $(call all-makefiles-under,$(LOCAL_PATH))
