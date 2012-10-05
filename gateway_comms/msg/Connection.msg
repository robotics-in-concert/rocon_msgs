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

# node_uri for communication
string uri

# service_api (required for services)
string service_api

# action/topic type (required for topics). this is the base type of the action
string topic_type
