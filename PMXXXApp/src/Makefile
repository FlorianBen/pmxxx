TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE
# Build the IOC application
PROD_IOC = PMXXX

# PMXXX.dbd will be created and installed
DBD += PMXXX.dbd

# PMXXX.dbd will include these files:
PMXXX_DBD += base.dbd
PMXXX_DBD += calcSupport.dbd
PMXXX_DBD += stream.dbd
PMXXX_DBD += asyn.dbd
PMXXX_DBD += drvAsynSerialPort.dbd
PMXXX_DBD += drvAsynIPPort.dbd
PMXXX_DBD += drvAsynUSBTMC.dbd

# Link in the code from our support library
PMXXX_LIBS += calc stream asyn

# PMXXX_registerRecordDeviceDriver.cpp derives from PMXXX.dbd
PMXXX_SRCS += PMXXX_registerRecordDeviceDriver.cpp

# Build the main IOC entry point where needed
PMXXX_SRCS_DEFAULT += PMXXXMain.cpp
PMXXX_SRCS_vxWorks += -nil-

# Finally link IOC to the EPICS Base libraries
PMXXX_LIBS += $(EPICS_BASE_IOC_LIBS)
PMXXX_SYS_LIBS += usb-1.0

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE
