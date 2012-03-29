# Provides platform details from the app manager.

int16 PLATFORM_LINUX=0
int16 PLATFORM_WINDOZE=1
int16 PLATFORM_ANDROID=2

int16 SYSTEM_CUSTOM=0
int16 SYSTEM_ROS=1
int16 SYSTEM_OPROS=2

# Valid robot types, though this is totally not
# official, and we aren't relying on it.
string ROBOT_PC="pc"
string ROBOT_ROBOSEM="robosem"

# Configured by the app manager
int16 platform
int16 system
string robot
string key
string suggested_name
# Configured after contacted by the concert
string unique_name
