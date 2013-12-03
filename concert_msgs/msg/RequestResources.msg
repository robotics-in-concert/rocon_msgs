string service_name
concert_msgs/LinkGraph linkgraph
bool enable

# Identifiers
uuid_msgs/UniqueID id
# Use to group/namespace collections of resource requests from the one service
# This lets us easily cancel a whole group of resource requests from the
# service manager if a service is disabled (services should clean up themselves
# but you can't always rely on good behaviour). Would be good to try and
# remove the need for this, but it's convenient right now when the service manager
# is disabling a service (services should clean up themselves
# but you can't always rely on good behaviour).
string group

# The resource 'specification'
Resource[] resources

# Other important scheduler helping information here that
# is important to the resource request as a whole.
int16 priority
