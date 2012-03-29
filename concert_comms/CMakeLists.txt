cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)

rosbuild_init()
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

rosbuild_genmsg()
rosbuild_gensrv()

#rosbuild_find_ros_package(yujin_comms_headers)
#add_custom_command(TARGET rospack_genmsg_all
#                   POST_BUILD
#                   COMMAND cp -r ${PROJECT_SOURCE_DIR}/msg_gen/cpp/include/* ${yujin_comms_headers_PACKAGE_PATH}/include/
#                   WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
#                   COMMENT "Installing headers to ${yujin_comms_headers_PACKAGE_PATH}/include/"
#)                  
