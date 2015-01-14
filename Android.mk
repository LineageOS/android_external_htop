LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-O2 -pedantic -Wall -std=c99 -rdynamic -D_XOPEN_SOURCE_EXTENDED -DSYSCONFDIR=\"/system/etc\"

LOCAL_C_INCLUDES:= \
	external/libncurses/include

LOCAL_SRC_FILES:= \
  Affinity.c BatteryMeter.c ColorsPanel.c DisplayOptionsPanel.c HostnameMeter.c IOPriorityPanel.c \
	Meter.c Panel.c ScreenManager.c SwapMeter.c UsersTable.c AffinityPanel.c CategoriesPanel.c \
	ColumnsPanel.c FunctionBar.c htop.c ListItem.c MetersPanel.c Process.c Settings.c TasksMeter.c \
	Vector.c AvailableColumnsPanel.c CheckItem.c CPUMeter.c Hashtable.c IncSet.c LoadAverageMeter.c \
	Object.c ProcessList.c SignalsPanel.c TraceScreen.c AvailableMetersPanel.c ClockMeter.c CRT.c \
	Header.c IOPriority.c MemoryMeter.c OpenFilesScreen.c RichString.c String.c UptimeMeter.c

LOCAL_SHARED_LIBRARIES:= libncurses

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE:= htop

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)

include $(BUILD_EXECUTABLE)
