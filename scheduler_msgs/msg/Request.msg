### Resource request description
#
#   This tracks the progress of a single requested resource.
#
#   QUESTION: do we need to track each request time separately?
#
uuid_msgs/UniqueID id   # Requester-assigned unique identifier

uint8 status            # Current status of this request

## status values, similar to actionlib goal states
#
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

## actionlib goal states that will probably need modification:
#
uint8 RECALLING   = 7   # The request received a cancel request
                        #   before it started executing, but the
                        #   scheduler has not yet confirmed that
                        #   the request is canceled
uint8 RECALLED    = 8   # The request received a cancel request
                        #   before it started executing and was
                        #   successfully cancelled (Terminal
                        #   State)
uint8 LOST        = 9   # A requester can determine that a request is
                        #   LOST. This should not be sent in a message
                        #   by the scheduler

time  availability      # Estimated time of availability (zero if unknown)

##  A rocon platform information tuple describes the desired resource.
#
#   It may contain wild-cards matching various alternatives.
#   When a resource containing wild-cards gets assigned, its
#   description is resolved to the exact object allocated.
#
rocon_std_msgs/PlatformInfo resource    # What resource is desired
