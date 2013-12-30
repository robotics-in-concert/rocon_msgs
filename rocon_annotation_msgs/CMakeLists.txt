##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(rocon_annotation_msgs)

##############################################################################
# Dependencies
##############################################################################

find_package(catkin REQUIRED COMPONENTS 
    message_generation
)

##############################################################################
# Messgaes
##############################################################################

add_message_files(
  DIRECTORY msg
  FILES
  MapListEntry.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  DeleteAnnotations.srv
  ListAnnotations.srv
  PublishAnnotations.srv
  RenameAnnotations.srv
  SaveAnnotations.srv
  # Disabling these as they depend on yocs_msgs and ar_track_alvar
  # Priority job is to remove these dependencies from rocon_annotations
  #SaveMarkers.srv
  #SaveColumns.srv
  #SaveTables.srv
  #SaveWalls.srv
)

generate_messages(DEPENDENCIES)

##############################################################################
# Package
##############################################################################

catkin_package(CATKIN_DEPENDS message_runtime)
