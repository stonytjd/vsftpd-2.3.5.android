LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:=\
	main.c utility.c prelogin.c ftpcmdio.c postlogin.c privsock.c \
	tunables.c ftpdataio.c secbuf.c ls.c \
	postprivparent.c logging.c str.c netstr.c sysstr.c strlist.c \
    banner.c filestr.c parseconf.c secutil.c \
    ascii.c oneprocess.c twoprocess.c privops.c standalone.c hash.c \
    tcpwrap.c ipaddrparse.c access.c features.c readwrite.c opts.c \
    ssl.c sslslave.c ptracesandbox.c ftppolicy.c sysutil.c sysdeputil.c

LOCAL_CFLAGS := -O2 -g -O2 -Wall -W -Wshadow -D__linux__

LOCAL_C_INCLUDES += $(LOCAL_PATH)/dummyinc

LOCAL_SHARED_LIBRARIES += libssl libcrypto
LOCAL_STATIC_LIBRARIES += libcrypt

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

LOCAL_MODULE_TAGS := eng

LOCAL_MODULE := vsftpd

include $(BUILD_EXECUTABLE)
