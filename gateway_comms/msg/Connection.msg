# Standard gateway connection message

# A connection can be 1 of 5 types
string PUBLISHER = "publisher"
string SUBSCRIBER = "subscriber"
string SERVICE = "service"
string ACTION_CLIENT = "action_client"
string ACTION_SERVER = "action_server"
string INVALID = "invalid"

# Connection type (from above list)
string type

# Tuples of information about the connection
# publisher  - [topic_name/topic_regex]
#            - [topic_name/topic_regex, node_name]
# subscriber - [topic_name/topic_regex]
#            - [topic_name/topic_regex, node_name]
# service    - [service_name]
# action_client/action_server - undefined (in progress)
string[] list
