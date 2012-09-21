LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-O2 -pedantic -Wall -std=c99 -rdynamic -D_XOPEN_SOURCE_EXTENDED -DSYSCONFDIR=\"/system/etc\"

LOCAL_C_INCLUDES:= \
	external/libncurses/include \
	external/htop/plpa-1.3.2/src/libplpa

LOCAL_SRC_FILES:= \
	AvailableMetersPanel.c CategoriesPanel.c CheckItem.c \
	ClockMeter.c ColorsPanel.c ColumnsPanel.c CPUMeter.c CRT.c DebugMemory.c \
	DisplayOptionsPanel.c FunctionBar.c Hashtable.c Header.c htop.c ListItem.c \
	LoadAverageMeter.c MemoryMeter.c Meter.c MetersPanel.c Object.c Panel.c \
	BatteryMeter.c Process.c ProcessList.c RichString.c ScreenManager.c Settings.c \
	SignalItem.c SignalsPanel.c String.c SwapMeter.c TasksMeter.c TraceScreen.c \
	UptimeMeter.c UsersTable.c Vector.c AvailableColumnsPanel.c AffinityPanel.c \
	HostnameMeter.c OpenFilesScreen.c \
	plpa-1.3.2/src/libplpa/plpa_internal.h \
	plpa-1.3.2/src/libplpa/plpa_api_probe.c \
	plpa-1.3.2/src/libplpa/plpa_dispatch.c \
	plpa-1.3.2/src/libplpa/plpa_runtime.c \
	plpa-1.3.2/src/libplpa/plpa_map.c

LOCAL_SHARED_LIBRARIES:= libncurses

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= htop

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

include $(BUILD_EXECUTABLE)
