##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(scheduler_msgs)

##############################################################################
# Dependencies
##############################################################################

set(${PROJECT_NAME}_BUILD_DEPENDENCIES
    actionlib_msgs 
    message_generation
    std_msgs)
set(${PROJECT_NAME}_EXPORT_DEPENDENCIES ${${PROJECT_NAME}_BUILD_DEPENDENCIES})

find_package(catkin REQUIRED COMPONENTS ${${PROJECT_NAME}_BUILD_DEPENDENCIES})

##############################################################################
# Messages
##############################################################################

add_action_files(
  DIRECTORY action
  FILES
  AllocateResources.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  ReleaseResources.srv
)

generate_messages(DEPENDENCIES
    std_msgs 
)

##############################################################################
# Package
##############################################################################

catkin_package(CATKIN_DEPENDS ${${PROJECT_NAME}_EXPORT_DEPENDENCIES})
