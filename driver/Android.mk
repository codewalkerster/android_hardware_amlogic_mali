LOCAL_PATH:=$(call my-dir)

PRODUCT_COPY_FILES += $(LOCAL_PATH)/egl.cfg:system/lib/egl/egl.cfg
PRODUCT_COPY_FILES += $(LOCAL_PATH)/libEGL_mali.so:system/lib/egl/libEGL_mali.so
PRODUCT_COPY_FILES += $(LOCAL_PATH)/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so
PRODUCT_COPY_FILES += $(LOCAL_PATH)/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so
PRODUCT_COPY_FILES += $(LOCAL_PATH)/libMali.so:system/lib/libMali.so
PRODUCT_COPY_FILES += $(LOCAL_PATH)/mali.ko:system/lib/mali.ko
PRODUCT_COPY_FILES += $(LOCAL_PATH)/ump.ko:system/lib/ump.ko
