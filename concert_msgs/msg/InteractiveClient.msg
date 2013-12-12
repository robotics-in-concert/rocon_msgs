# 
# Describes an interactive concert client.
#
# Unique names - human consumable rocon name as well as globally unique name
# provided by the remocon client.

string name
uuid_msgs/UniqueID id

# Platform filter - could use a string here, or the PlatformInfo msg itself.
# Strings are easier and can be validated through appropriate api written
# for them.
string platform_info

# Application that is being run by the interactive client.
# RemoconApp app
string app_name
