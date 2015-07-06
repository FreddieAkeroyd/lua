# Linux startup script

< ./nfsCommands

#load("../../bin/vxWorks-ppc32/scriptioc.munch")

################################################################################
# Tell EPICS all about the record types, device-support modules, drivers,
# etc. in the software we just loaded (xxx.munch)
dbLoadDatabase("../../dbd/scriptioc.dbd")
scriptioc_registerRecordDeviceDriver(pdbbase)

epicsEnvSet("LUA_SCRIPT_PATH",".")

drvAsynIPPortConfigure("IP", "cars.uchicago.edu:80", 0,0,0)

dbLoadRecords("./asyn.db", "P=klang:,Q=test:,PORT=IP")

#######
iocInit
#######
