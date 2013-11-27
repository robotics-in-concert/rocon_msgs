### Scheduler Feedback
#
#   DEPRECATED: use SchedulerRequests instead.
#
#   This message is sent to a requester whenever the status of some
#   request it made has changed.
#
Header header                   # Time of this status, frame_id irrelevant
uuid_msgs/UniqueID requester    # Requester identifier
uint16 priority                 # Requester's priority, possibly adjusted
Request[] requests              # Status of every currently-known request
