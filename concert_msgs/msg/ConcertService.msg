string                      name
string                      description
string                      author
int16                       status
bool                        enabled
uint16                      priority
uuid_msgs/UniqueID          uuid
concert_msgs/LinkGraph      linkgraph

# Service Status
int16 UNEXPECTED_ERROR      = -3
int16 INSUFFICIENT_CLIENTS  = -2
int16 NOT_READY             = -1
int16 READY                 = 0
