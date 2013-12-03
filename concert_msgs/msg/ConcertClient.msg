# 
# Describes a concert client - used only on the concert side
#
# Unique names - human consumable rocon name as well as global gateway name
string name
string gateway_name

# The platform id tuple (refer to rocon_std_msgs/PlatformInfo.msg for string values)
string os
string version
string system
string platform

# Current status of the concert client (refer to concert_msgs/ConcertClient.msg for mode strings)
string client_status
string app_status

# Is on the same machine ip as the conductor
bool is_local_client

# Depracate this
string status

# Statistics
time last_connection_timestamp

rocon_app_manager_msgs/App[] apps
