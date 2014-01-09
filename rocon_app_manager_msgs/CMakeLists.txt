##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(rocon_app_manager_msgs)

##############################################################################
# Dependencies
##############################################################################

find_package(catkin REQUIRED COMPONENTS 
    message_generation
    rocon_std_msgs
    rocon_service_pair_msgs
    )

##############################################################################
# Messgaes
##############################################################################

add_message_files(
  DIRECTORY msg
  FILES
  PairingClient.msg
  App.msg
  AppList.msg
  IncompatibleAppList.msg
  Constants.msg
  ErrorCodes.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  GetAppList.srv
  Init.srv
  Invite.srv
  SimpleInvite.srv
  StartApp.srv
  Status.srv
  StopApp.srv
)

add_service_pair_files(
  DIRECTORY pairs
  FILES
  StartApp.pair
)

generate_messages(DEPENDENCIES rocon_std_msgs rocon_service_pair_msgs)

##############################################################################
# Package
##############################################################################

catkin_package(CATKIN_DEPENDS 
    message_runtime
    rocon_std_msgs
    rocon_service_pair_msgs
)
