
MALI_LIB_PREBUILT=true
#build in hardware/amlogic/ddk
ifneq (,$(wildcard hardware/amlogic/ddk))
MALI_LIB_PREBUILT=false
endif
#build in hardware/arm/gpu/ddk
ifneq (,$(wildcard hardware/arm/gpu/ddk))
MALI_LIB_PREBUILT=false
endif
#already in hardware/arm/gpu/lib
ifneq (,$(wildcard hardware/arm/gpu/lib))
MALI_LIB_PREBUILT=false
endif

ifeq ($(MALI_LIB_PREBUILT),true)
LOCAL_PATH:=$(call my-dir)

TARGET=mali400
ifeq ($(USING_MALI450), true)
TARGET=mali450
endif

TARGET_T=$(TARGET)
TARGET:=$(TARGET_T)_ion

#$(error TARGET=$(TARGET) USING_ION=$(USING_ION))

include $(CLEAR_VARS)
LOCAL_MODULE := libGLES_mali
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(TARGET_OUT)/lib/egl
LOCAL_MODULE_PATH_64 := $(TARGET_OUT)/lib64/egl
LOCAL_SRC_FILES_arm := $(TARGET)/libGLES_mali.so
LOCAL_SRC_FILES_arm64 := $(TARGET)/libGLES_mali_64.so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := egl.cfg
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT)lib/egl
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)
endif
