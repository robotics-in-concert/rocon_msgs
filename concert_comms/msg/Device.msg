# Provides details about the device/robot
#
# Using strings is nicer here as its easier to 
# introspect the system quickly when its human
# readable (we're not throwing them around alot 
# anyway, so no big speed loss is incurred).

string PLATFORM_ANY=*
string PLATFORM_LINUX=linux
string PLATFORM_WINDOZE=windows
string PLATFORM_ANDROID=android

string SYSTEM_ANY=*
string SYSTEM_CUSTOM=custom
string SYSTEM_ROS=ros
string SYSTEM_OPROS=opros

# Valid robot types. This is not
# official, and we aren't relying 
# on it.
string ROBOT_PC="pc"
string ROBOT_ROBOSEM="robosem"
string ROBOT_KOBUKIBOT="kobukibot"

# Configured by the app manager
string platform
string system
string robot
