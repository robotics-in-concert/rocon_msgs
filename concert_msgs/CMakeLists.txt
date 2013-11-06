##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(concert_msgs)

##############################################################################
# Dependencies
##############################################################################

find_package(catkin REQUIRED COMPONENTS 
    message_generation 
    std_msgs
    rocon_std_msgs
    rocon_app_manager_msgs
    uuid_msgs
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
  ConcertInfo.msg
  Constants.msg
  ErrorCodes.msg
  Implementation.msg
  LinkConnection.msg
  LinkEdge.msg
  LinkGraph.msg
  LinkNode.msg
  RemoconApp.msg
  RemoconStatus.msg
  RoleAppList.msg
  Roles.msg
  ConcertService.msg
  ListConcertService.msg
  RequestResources.msg
  ServiceResourcePair.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  ClientList.srv
  GetRolesAndApps.srv
  Invite.srv
  RequestInteraction.srv
  SetRolesAndApps.srv
  StartSolution.srv
  StopSolution.srv
  AddConcertService.srv
  RemoveConcertService.srv
  EnableConcertService.srv
  ResourceStatus.srv
)

generate_messages(DEPENDENCIES
    std_msgs 
    rocon_std_msgs
    rocon_app_manager_msgs
    uuid_msgs
)

##############################################################################
# Package
##############################################################################

catkin_package(CATKIN_DEPENDS 
                   message_runtime
                   std_msgs
                   rocon_std_msgs
                   rocon_app_manager_msgs
                   uuid_msgs
               )
