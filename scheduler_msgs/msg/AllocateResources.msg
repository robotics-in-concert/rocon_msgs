### Allocate Resources
#
#  Rocon services send this message on the scheduler's input topic to
#  request resources managed by the scheduler.
#
#  If not all of the requested resources are immediately available,
#  the scheduler will queue the request and provide feedback.  The
#  rocon service making this request should wait for a result, but may
#  cancel the request at any time via the actionlib interface.

Header header                   # time of request, frame_id is irrelevant
uuid_msgs/UniqueID requester    # requester-assigned unique identifier

# A list of tuples describing the types of resources desired.  Tuple
# entries may contain '*' wild-cards.
rocon_std_msgs/PlatformInfo[] resources
