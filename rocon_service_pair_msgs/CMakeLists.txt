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

catkin_package(
    CATKIN_DEPENDS uuid_msgs
    CFG_EXTRAS rocon_service_pair_msgs-extras.cmake
    )

##############################################################################
# Installs
##############################################################################

# install the .pair -> .msg generator
install(PROGRAMS scripts/genpair.py DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
