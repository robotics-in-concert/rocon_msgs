##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(rocon_std_msgs)

##############################################################################
# Dependencies
##############################################################################

find_package(catkin REQUIRED COMPONENTS 
    genmsg 
    std_msgs
    rocon_service_pair_msgs
)

##############################################################################
# Messgaes
##############################################################################

add_message_files(
  DIRECTORY msg
  FILES
  Icon.msg
  KeyValue.msg
  MasterInfo.msg
  PlatformInfo.msg
  StringArray.msg
  Strings.msg
  Remapping.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  GetPlatformInfo.srv
)

add_service_pair_files(
  DIRECTORY pairs
  FILES
  Strings.pair
)

generate_messages(DEPENDENCIES std_msgs rocon_service_pair_msgs)

##############################################################################
# Package
##############################################################################

catkin_package(CATKIN_DEPENDS
    message_runtime
    std_msgs
    rocon_service_pair_msgs
)
