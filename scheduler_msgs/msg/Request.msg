### Resource request description
#
#   This tracks the progress of a single requested resource group.
#
#   QUESTION: do we need to track each request time separately?
#
##############################################################################
# Resource Identification
##############################################################################

Resource[] resources    # identifying ros_package/rapp and platform
uuid_msgs/UniqueID id   # Requester-assigned universally unique identifier

##############################################################################
# Constants
##############################################################################

# We might like to apply some broader priority classifications via constants
# (e.g. background, default, high, critical) for simplified usage
int16 DEFAULT_PRIORITY = 0  # A sane default for priorities

##############################################################################
# State
##############################################################################

##  Status value labels:
#
uint8 status            # Current status of this request

uint8 NEW         = 0   # A new request for the scheduler
uint8 RESERVED    = 1   # A request for a reservation at some future time
uint8 WAITING     = 2   # The request has been queued by the scheduler
uint8 GRANTED     = 3   # The request was granted by the scheduler
uint8 PREEMPTING  = 4   # The scheduler wants to preempt this
                        #   previously-granted request, but the
                        #   requester has not yet released it
uint8 CANCELING   = 5   # The requester wishes to release this
                        #   resource, but the scheduler has not yet
                        #   confirmed that the request is canceled
uint8 CANCELED    = 6   # The resource has been released successfully
                        #   (unique terminal state)

## Deprecated status values, use newer equivalents instead:
#
uint8 ABORTED     = 6
uint8 REJECTED    = 6
uint8 RELEASING   = 5
uint8 RELEASED    = 6

##############################################################################
# Scheduling Variables
##############################################################################

int16    priority       # Current priority of this request
time     availability   # Estimated time of availability (zero if unknown)
duration hold_time      # Estimated hold time once allocated (zero if unknown)
