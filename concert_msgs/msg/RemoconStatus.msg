# Used by the remocons to inform the concert of it's current status. They should
# publish this as a latched publisher.

rocon_std_msgs/PlatformInfo platform_info
uuid_msgs/UniqueID uuid
bool running_app
string app_name