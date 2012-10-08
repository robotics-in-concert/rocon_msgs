# Standard gateway connection message

# A connection can be 1 of 5 types
string PUBLISHER = publisher
string SUBSCRIBER = subscriber
string SERVICE = service
string ACTION_CLIENT = action_client
string ACTION_SERVER = action_server
string INVALID = invalid

# type of connection (from above)
string type

# this is the topic/service name or the action base name
string name 

# not really required by foreign gateways, but the information is useful locally
string node

# [DJS] Would like to move these out of here, they are internal variables only, i.e.
# a user never needs to see them.

# node_uri for communication
string uri

# service_api (required for services)
string service_api

# action/topic type (required for topics). this is the base type of the action
string topic_type
