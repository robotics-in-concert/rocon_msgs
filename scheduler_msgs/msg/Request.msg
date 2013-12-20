### Resource request description
#
#   This tracks the progress of a single requested resource group.
#   All these resources will be granted, preempted or canceled
#   together as a unit.

##############################################################################
# Resource Identification
##############################################################################

uuid_msgs/UniqueID id   # Requester-assigned universally unique identifier
Resource[] resources    # List of requested rapps and platforms

##############################################################################
# State
##############################################################################

uint8 status            # Current status of this request

##  Status value labels:
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

## Deprecated status labels, use the newer equivalents instead:
uint8 ABORTED     = 6
uint8 REJECTED    = 6
uint8 RELEASING   = 5
uint8 RELEASED    = 6

##############################################################################
# Scheduling Variables
##############################################################################

time     availability   # Estimated time of availability (zero if unknown)
duration hold_time      # Estimated hold time once allocated (zero if unknown)
int16    priority       # Current priority of this request

## Priority labels:
int16 BACKGROUND_PRIORITY = -2000       # When nothing else to do
int16 LOW_PRIORITY = -1000              # Low-priority task
int16 DEFAULT_PRIORITY = 0              # Sane default priority
int16 HIGH_PRIORITY = 1000              # High-priority task
int16 CRITICAL_PRIORITY = 2000          # Mission-critical task
