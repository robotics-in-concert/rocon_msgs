##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(concert_msgs)

##############################################################################
# Dependencies
##############################################################################

find_package(catkin REQUIRED COMPONENTS 
    gateway_msgs
    message_generation 
    rocon_app_manager_msgs
    rocon_std_msgs
    std_msgs
    uuid_msgs
)

##############################################################################
# Messgaes
##############################################################################

add_message_files(
  DIRECTORY msg
  FILES
  CancelResources.msg
  ConcertClient.msg
  ConcertClientConfiguration.msg
  ConcertClients.msg
  ConcertInfo.msg
  ConcertService.msg
  ConcertServices.msg
  Constants.msg
  ErrorCodes.msg
  Implementation.msg
  LinkConnection.msg
  LinkEdge.msg
  LinkGraph.msg
  LinkNode.msg
  RemoconApp.msg
  RemoconStatus.msg
  Resource.msg
  RoleAppList.msg
  Roles.msg
  RequestResources.msg
  ServiceResourcePair.msg
  Strings.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  GetApp.srv
  GetRolesAndApps.srv
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
    gateway_msgs
    rocon_app_manager_msgs
    rocon_std_msgs
    std_msgs 
    uuid_msgs
)

##############################################################################
# Package
##############################################################################

catkin_package(CATKIN_DEPENDS 
                   gateway_msgs
                   message_runtime
                   rocon_app_manager_msgs
                   rocon_std_msgs
                   std_msgs
                   uuid_msgs
               )
