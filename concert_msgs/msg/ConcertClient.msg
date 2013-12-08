# 
# Describes a concert client - used only on the concert side
#
# Unique names - human consumable rocon name as well as global gateway name
string name
string gateway_name

# Platform filter - could use a string here, or the PlatformInfo msg itself.
# Strings are easier and can be validated through appropriate api written
# for them.
string platform_info

# Current status of the concert client (refer to concert_msgs/ConcertClient.msg for mode strings)
string client_status
string app_status

# Is on the same machine ip as the conductor
bool is_local_client

# Depracate this
string status

# Statistics
gateway_msgs/ConnectionStatistics conn_stats
time last_connection_timestamp

rocon_app_manager_msgs/App[] apps
