# Strings that are constant with respect to the entire concert. Listing them here
# allows every user to automatically update if there are any refactorings.
#
# Note: personally every fibre of my existential ros experience strums with
# the twang of rebellion at the thought of hardcoding strings. We have however
# quite alot of places where remappings are impossible (android remocons, ...)
# and launcher remappings are sometimes done in code anyway (especially where we are
# using the roslaunch api such as in the service manager). Having them centralised
# here makes refactoring across the whole concert as easy as possible.
#
# Note: nonetheless, use these directly as little as possible. Prefer rostopic.find_by_type
# and rosservice.rosservice_find for getting services that should be unique
# (e.g. gateway/interactions)

string GATEWAY_SHUTDOWN = /concert/gateway/shutdown
string HUB_SHUTDOWN = /concert/hub/shutdown

# Parameters
string PARAM_ROCON_SCREEN = /rocon/screen

# Scheduler
string SCHEDULER_REQUESTS = /concert/scheduler/requests
string SCHEDULER_UNALLOCATED_RESOURCE = unallocated

# Conductor
string CONCERT_CLIENTS = /concert/conductor/concert_clients
string CONCERT_CLIENT_CHANGES = /concert/conductor/concert_client_changes

# Namespaces
string REMOCONS_NAMESPACE = /remocons
