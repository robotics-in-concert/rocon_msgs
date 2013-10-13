# Provides platform details for robots, software or human
# interactive devices.
# 
# NOTE: Currently getting used in the concert by role manager,
# but there also exists rocon_app_manager_msgs.PlatformInfo. 
# This supercedes that one until such a time as we can fully
# depracate it.

######################## Platform Tuple ########################

# Operating systems.
string OS_ANY=*
string OS_LINUX=linux
string OS_UBUNTU=ubuntu
string OS_WINDOZE=windoze
string OS_ANDROID=android
string OS_APPLE=apple
string OS_IPHONE=iphone

# Undecided on whether we should use numbers or text identifiers
string VERSION_ANY=*
string VERSION_UBUNTU_PRECISE=precise
string VERSION_ANDROID_JELLYBEAN=jellybean

# Valid platform types
string PLATFORM_ANY=*
string PLATFORM_SMART_DEVICE=smart_device # phone or tablet
string PLATFORM_PHONE=phone
string PLATFORM_TABLET=tablet
string PLATFORM_PC=pc
string PLATFORM_ROBOSEM=robosem
string PLATFORM_KOBUKI=kobuki
string PLATFORM_TURTLEBOT=turtlebot

# Represent the middleware being used. Breaking ros down here
# is useful since the different sub types expose the fact
# that each support varying levels of middleware support.
# Should the breakdowns alternatively represent rosdistro?
string SYSTEM_CUSTOM=custom
string SYSTEM_ROS=ros
string SYSTEM_RQT=rqt
string SYSTEM_ROSJAVA=rosjava
string SYSTEM_ROSJS=rosjs
string SYSTEM_OPROS=opros

string NAME_ANY=*

########################### Variables ###########################

string os
string version
string platform
string system
string name
Icon icon