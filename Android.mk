# Copyright 2014 The SUNNIWELL Android Open Source Project
# Author:  Wictor  <linweigjj@gmail.com>
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	fdisks/partname.c \
	fdisks/sfdisk.c \
	lib/strutils.c \
	lib/linux_version.c \
	lib/wholedisk.c \
	lib/blkdev.c \
	lib/canonicalize.c
	

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/include 

LOCAL_MODULE := sfdisk

LOCAL_STATIC_LIBRARIES := libc 

LOCAL_FORCE_STATIC_EXECUTABLE := true

LOCAL_MODULE := sfdisk

CFLAGS := -g -O2 -fsigned-char -fno-common -Wall

ALL_DEFAULT_INSTALLED_MODULES += $(LOCAL_MODULE)

include $(BUILD_EXECUTABLE)
