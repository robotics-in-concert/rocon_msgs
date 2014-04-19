# 
# Describes a concert client - used only on the concert side
#
# Unique names - human consumable rocon name as well as global gateway name
string name
string gateway_name

# Information about the concert client.
rocon_std_msgs/PlatformInfo platform_info

# Current status of the concert client. Refer to concert_msgs/Constants.msg 
# for mode strings.
string client_status
string app_status

# Is on the same machine ip as the conductor
bool is_local_client

# State of the concert client, see ConcertClientState.msg for string constants
string state

# Statistics
gateway_msgs/ConnectionStatistics conn_stats
time last_connection_timestamp

rocon_app_manager_msgs/App[] apps
