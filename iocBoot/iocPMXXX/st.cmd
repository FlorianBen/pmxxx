#!../../bin/linux-x86_64/PMXXX

#- You may have to change PMXXX to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/db"

# Macro prefix
epicsEnvSet "P" "PM400:"
epicsEnvSet "R" "CAL:"

## Register all support components
dbLoadDatabase "dbd/PMXXX.dbd"
PMXXX_registerRecordDeviceDriver pdbbase

usbtmcConfigure("usbtmc2")

## Load record instances
dbLoadRecords("db/PMXXX.db","P=$(P),R=$(R),PORT=usbtmc2,A=0")


cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=fb250757"
