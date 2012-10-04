# Standard gateway connection message

# A connection can be 1 of 5 types
# 1. Topic Publisher
# 2. Topic Subscriber
# 3. Service Server
# 4. Action Client
# 5. Action Server
string PUBLISHER = "pub"
string SUBSCRIBER = "sub"
string SERVICE = "srv"
string ACTION_CLIENT = "ac"
string ACTION_SERVER = "as"

# Connection type (from above list)
string type

# Tuples of information about the connection
# pub - [topic_name/topic_regex]
#     - [topic_name/topic_regex, node_name]
# sub - [topic_name/topic_regex]
#     - [topic_name/topic_regex, node_name]
# srv - [service_name]
# ac/as - current undefined (in progress)
string[] list
