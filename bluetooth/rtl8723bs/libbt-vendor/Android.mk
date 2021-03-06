LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifneq ($(BOARD_HAVE_BLUETOOTH_RTK),)

BDROID_DIR := $(TOP_DIR)system/bt

LOCAL_SRC_FILES := \
        src/bt_vendor_rtk.c \
        src/hardware.c \
        src/userial_vendor.c \
        src/upio.c

LOCAL_C_INCLUDES += \
        $(LOCAL_PATH)/include \
        $(BDROID_DIR)/hci/include

LOCAL_SHARED_LIBRARIES := \
        libcutils

LOCAL_MODULE := libbt-vendor-rtk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_OWNER := realtek
LOCAL_PROPRIETARY_MODULE := true

include $(LOCAL_PATH)/vnd_buildcfg.mk

include $(BUILD_SHARED_LIBRARY)

endif # BOARD_HAVE_BLUETOOTH_RTK
