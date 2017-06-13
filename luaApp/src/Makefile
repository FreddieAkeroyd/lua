TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# xxxRecord.h will be created from xxxRecord.dbd

SRC_DIRS += ../core

DBD += luaSupport.dbd

DBDINC += luascriptRecord.dbd

ifeq ($(BASE_3_15),YES)
    if [ ${EPICS_REVISION} -gt 4 ] ; then DBD += luaShell.dbd fi
endif

ifdef BASE_3_16
    DBD += luaShell.dbd
endif

INC += lua.h
INC += lualib.h
INC += lauxlib.h
INC += luaconf.h
INC += luaEpics.h
INC += devUtil.h

LIBRARY_IOC += lua
lua_SRCS += lapi.c
lua_SRCS += lauxlib.c
lua_SRCS += lbaselib.c
lua_SRCS += lbitlib.c
lua_SRCS += lcode.c
lua_SRCS += lcorolib.c
lua_SRCS += lctype.c
lua_SRCS += ldblib.c
lua_SRCS += ldebug.c
lua_SRCS += ldo.c
lua_SRCS += ldump.c
lua_SRCS += lfunc.c
lua_SRCS += lgc.c
lua_SRCS += linit.c
lua_SRCS += liolib.c
lua_SRCS += llex.c
lua_SRCS += lmathlib.c
lua_SRCS += lmem.c
lua_SRCS += loadlib.c
lua_SRCS += lobject.c
lua_SRCS += lopcodes.c
lua_SRCS += loslib.c
lua_SRCS += lparser.c
lua_SRCS += lstate.c
lua_SRCS += lstring.c
lua_SRCS += lstrlib.c
lua_SRCS += ltable.c
lua_SRCS += ltablib.c
lua_SRCS += ltm.c
lua_SRCS += lua.c
lua_SRCS += luac.c
lua_SRCS += lundump.c
lua_SRCS += lutf8lib.c
lua_SRCS += lvm.c
lua_SRCS += lzio.c
lua_SRCS += lasynlib.cpp
lua_SRCS += lepicslib.cpp

ifeq ($(BASE_3_15),YES)
    if [ ${EPICS_REVISION} -gt 4 ] ; then lua_SRCS += liocshlib.cpp fi
    if [ ${EPICS_REVISION} -gt 4 ] ; then lua_SRCS += luaShell.cpp fi
endif

ifdef BASE_3_16
    lua_SRCS += liocshlib.cpp
    lua_SRCS += luaShell.cpp
endif

lua_SRCS += luascriptRecord.cpp
lua_SRCS += luaSoft.c
lua_SRCS += luaEpics.cpp

lua_SRCS += devLuaAi.c
lua_SRCS += devLuaAo.c
lua_SRCS += devLuaBi.c
lua_SRCS += devLuaBo.c
lua_SRCS += devLuaMbbi.c
lua_SRCS += devLuaMbbo.c
lua_SRCS += devLuaLongin.c
lua_SRCS += devLuaLongout.c
lua_SRCS += devLuaStringin.c
lua_SRCS += devLuaStringout.c
lua_SRCS += devUtil.cpp

lua_LIBS += asyn
lua_LIBS += $(EPICS_BASE_IOC_LIBS)

PROD_IOC = scriptioc

DBD += scriptioc.dbd
scriptioc_DBD += base.dbd
scriptioc_DBD += drvAsynIPPort.dbd
scriptioc_DBD += luaSupport.dbd

ifeq ($(BASE_3_15),YES)
    if [ ${EPICS_REVISION} -gt 4 ] ; then scriptioc_DBD += luaShell.dbd fi
endif

ifdef BASE_3_16
    scriptioc_DBD += luaShell.dbd
endif

scriptioc_LIBS += lua
scriptioc_LIBS += asyn
scriptioc_LIBS += $(EPICS_BASE_IOC_LIBS)

scriptioc_SRCS += scriptioc_registerRecordDeviceDriver.cpp

scriptioc_SRCS_DEFAULT += luaMain.cpp
scriptioc_SRCS_vxWorks += -nil-


#=============================
# build an ioc application for testing

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE