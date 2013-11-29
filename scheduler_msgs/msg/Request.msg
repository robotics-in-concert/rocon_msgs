### Resource request description
#
#   This tracks the progress of a single requested resource.
#
#   QUESTION: do we need to track each request time separately?
#
uuid_msgs/UniqueID id   # Requester-assigned unique identifier

##  Status values are similar to actionlib goal states.
#   NOTE: still likely to change.
#
uint8 status            # Current status of this request

uint8 NEW         = 0   # A new request for the scheduler
uint8 WAITING     = 1   # The request has been queued by the scheduler
uint8 GRANTED     = 2   # The request was granted by the scheduler
uint8 PREEMPTED   = 3   # The scheduler preempted this previously-
                        #   granted request (Terminal State)
uint8 ABORTED     = 4   # The request was aborted by the scheduler due
                        #   to some failure (Terminal State)
uint8 REJECTED    = 5   # The request was rejected by the scheduler
                        #   without being processed, because it was
                        #   unattainable or invalid (Terminal State)
uint8 PREEMPTING  = 6   # The scheduler wants to preempt this
                        #   previously-granted request, but the
                        #   requester has not yet released it
uint8 RELEASING   = 7   # The requester wishes to release this
                        #   resource, but the scheduler has not yet
                        #   confirmed that the request is canceled
uint8 RELEASED    = 8   # The resource has been released successfully
                        #   (Terminal State)
uint8 RESERVED    = 9   # A request for a reservation at some future time

time     availability   # Estimated time of availability (zero if unknown)
duration hold_time      # Estimated hold time once allocated (zero if unknown)

##  A rocon platform information tuple describes the desired resource.
#
#   It may contain wild-cards matching various alternatives.
#   When a resource containing wild-cards gets assigned, its
#   description is resolved to the exact object allocated.
#
rocon_std_msgs/PlatformInfo resource    # What resource is desired
concert_msgs/LinkEdge[]     remappings
