# Constants - service types
string TYPE_ROSLAUNCH = roslaunch
string TYPE_CUSTOM    = custom
string TYPE_SHADOW    = shadow

# Pre-configured parameters
string                      name
string                      description
string                      author
uint16                      priority
string                      launcher_type
string                      launcher
string                      interactions

# Initialised parameters (on startup)
uuid_msgs/UniqueID          uuid

# Runtime variables
int16                       status
bool                        enabled
