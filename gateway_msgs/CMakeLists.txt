##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(gateway_msgs)

##############################################################################
# Dependencies
##############################################################################

find_package(catkin REQUIRED COMPONENTS 
    genmsg 
    std_msgs 
)

##############################################################################
# Messgaes
##############################################################################

add_message_files(
  DIRECTORY msg
  FILES
  ConnectionType.msg
  GatewayInfo.msg
  RemoteGateway.msg
  RemoteRule.msg
  ErrorCodes.msg
  Rule.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  Advertise.srv
  AdvertiseAll.srv
  ConnectHub.srv
  Remote.srv
  RemoteAll.srv
  RemoteGatewayInfo.srv
)

generate_messages(DEPENDENCIES
    std_msgs 
)

##############################################################################
# Package
##############################################################################

catkin_package(CATKIN_DEPENDS message_runtime std_msgs)
