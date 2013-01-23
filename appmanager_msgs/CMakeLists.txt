##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(appmanager_msgs)

##############################################################################
# Dependencies
##############################################################################

find_package(catkin REQUIRED COMPONENTS genmsg)

##############################################################################
# Messgaes
##############################################################################

add_message_files(
  DIRECTORY msg
  FILES
  AppDescription.msg
  Remapping.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  GetAppList.srv
  FlipRequest.srv
  Init.srv
  StartApp.srv
  StopApp.srv
)

generate_messages(DEPENDENCIES)

##############################################################################
# Package
##############################################################################

catkin_package()