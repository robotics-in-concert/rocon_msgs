## Scheduler Feedback
#
#  This message is sent to a requester whenever there is a change in
#  the status of some resource it wants.

Header header                   # time of status update, frame_id is irrelevant
uuid_msgs/UniqueID requester    # requester identifier

# The status of every resource requested so far.
ResourceStatus[] requests
