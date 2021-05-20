#!../../bin/linux-x86_64/PMXXX

#- You may have to change PMXXX to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/db"

# Adresse IP et port de l'alimentation
epicsEnvSet "USB_PORT" "/dev/usbtmc0"

# Prefix pour les macro
epicsEnvSet "P" "M400:"
epicsEnvSet "R" "CAL:"

## Register all support components
dbLoadDatabase "dbd/PMXXX.dbd"
PMXXX_registerRecordDeviceDriver pdbbase

usbtmcConfigure("usbtmc0")

## Load record instances
dbLoadRecords("db/PMXXX.db","P=$(P),R=$(R),PORT=usbtmc0,A=0")


cd "${TOP}/iocBoot/${IOC}"
iocInit

## Start any sequence programs
#seq sncxxx,"user=fb250757"
