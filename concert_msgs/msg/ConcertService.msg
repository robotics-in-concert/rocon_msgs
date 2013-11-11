string                      name
string                      description
string                      author
int16                       status
bool                        enabled
uint16                      priority
uuid_msgs/UniqueID          uuid
uint16                      launcher_type
string                      launcher
string                      interactions

# Service Status
int16 UNEXPECTED_ERROR      = -3
int16 INSUFFICIENT_CLIENTS  = -2
int16 NOT_READY             = -1
int16 READY                 = 0

# Service TYPE
string TYPE_ROSLAUNCH = roslaunch
string TYPE_CUSTOM    = custom

