##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(rocon_service_pair_msgs)

##############################################################################
# Dependencies
##############################################################################

find_package(catkin REQUIRED COMPONENTS 
    uuid_msgs
)

##############################################################################
# Package
##############################################################################

# This is horrible - temporarily introducing a fake dependency here so people
# can depend on rocon_service_pair_msgs when generating their own service
# pairs. This is more logical as it automatically brings in the hidden
# uuid_msgs dependency in the generate_messages call. Note that you can't
# just call generate_messages on its own - it spams you with a catkin warning.

add_message_files(
  DIRECTORY msg
  FILES
  Empty.msg
)

generate_messages(DEPENDENCIES uuid_msgs)

catkin_package(
    CATKIN_DEPENDS uuid_msgs
    CFG_EXTRAS rocon_service_pair_msgs-extras.cmake
    )

##############################################################################
# Installs
##############################################################################

# install the .pair -> .msg generator
install(PROGRAMS scripts/genpair.py DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
