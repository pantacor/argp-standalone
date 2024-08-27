LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := argp-standalone
LOCAL_DESCRIPTION := argp-standalone
LOCAL_LIBRARIES :=

LOCAL_EXPORT_LDLIBS =

LOCAL_AUTOTOOLS_VERSION := 2.0.4
LOCAL_AUTOTOOLS_CONFIGURE_ARGS :=
LOCAL_AUTOTOOLS_CONFIGURE_ENV :=  

define LOCAL_AUTOTOOLS_CMD_POST_INSTALL
	mkdir -p $(TARGET_OUT_STAGING)/usr/lib/; \
	cp -vf $(PRIVATE_OBJ_DIR)/libargp.a \
		$(TARGET_OUT_STAGING)/usr/lib/; \
	mkdir -p $(TARGET_OUT_STAGING)/usr/include/; \
	cp -vf $(PRIVATE_SRC_DIR)/argp.h \
		$(TARGET_OUT_STAGING)/usr/include/
endef

include $(BUILD_AUTOTOOLS)

