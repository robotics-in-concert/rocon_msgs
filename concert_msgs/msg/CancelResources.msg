# There are two ways to specify cancelling. If the group string is non-empty
# it should try and use that, otherwise it falls back to the uuid.

# Unique group name which cancels all resources in that group. Currently
# use this to conveniently cancel all requests from a service via the service manager
# Would be good to try and remove this sometime.
string group
# Individual uuid's representative of an individual resource
uuid_msgs/UniqueID id
