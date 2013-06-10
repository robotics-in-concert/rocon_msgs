##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(concert_msgs)

##############################################################################
# Dependencies
##############################################################################

find_package(catkin REQUIRED COMPONENTS 
    genmsg 
    std_msgs 
    zeroconf_msgs 
    rocon_app_manager_msgs
)

##############################################################################
# Messgaes
##############################################################################

add_message_files(
  DIRECTORY msg
  FILES
  ConcertClient.msg
  ConcertClientConfiguration.msg
  ConcertClients.msg
  Constants.msg
  Implementation.msg
  LinkConnection.msg
  LinkEdge.msg
  LinkGraph.msg
  LinkNode.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  ClientList.srv
  Invite.srv
  StartSolution.srv
  StopSolution.srv
)

generate_messages(DEPENDENCIES
    std_msgs 
    zeroconf_msgs 
    rocon_app_manager_msgs
)

##############################################################################
# Package
##############################################################################

catkin_package(CATKIN_DEPENDS message_runtime std_msgs zeroconf_msgs rocon_app_manager_msgs)
