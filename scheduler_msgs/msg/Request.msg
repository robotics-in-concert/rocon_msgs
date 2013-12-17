### Resource request description
#
#   This tracks the progress of a single requested resource group.
#
#   QUESTION: do we need to track each request time separately?
#
##############################################################################
# Resource Identification
##############################################################################

# This is usually a uniquely identifying ros_package/rapp name identifier.
# This is unique because ros packages are necessarily unique. 
Resource[] resources
uuid_msgs/UniqueID id   # Requester-assigned unique identifier

##############################################################################
# Constants
##############################################################################

# We might like to apply some broader priority classifications via constants
# (e.g. background, default, high, critical) for simplified usage
int16 DEFAULT_PRIORITY = 0  # A sane default for priorities

##############################################################################
# State
##############################################################################

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

##############################################################################
# Scheduling Variables
##############################################################################

int16    priority       # current priority of this request
time     availability   # Estimated time of availability (zero if unknown)
duration hold_time      # Estimated hold time once allocated (zero if unknown)
