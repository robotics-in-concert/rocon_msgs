### Scheduler Feedback
#
#   This message is sent to a requester whenever the status of some
#   request it made has changed.
#
Header header                   # Time of this status, frame_id irrelevant
uuid_msgs/UniqueID requester    # Requester identifier
Request[] requests              # Status of every currently-known request
