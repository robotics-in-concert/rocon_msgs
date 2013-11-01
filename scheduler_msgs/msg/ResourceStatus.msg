### Resource Status 
#
#   This describes the status of a single previously-requested
#   resource.  If that resource is not currently assigned to this
#   requester, an estimate of when it might eventually be available
#   may be provided.
#
#   When a resource containing wild-cards gets assigned, its
#   description is resolved to the exact object allocated.
#
#   QUESTION: is it useful to assign a UUID to each resource requested?

rocon_std_msgs/PlatformInfo resource # which resource?

int16 STATUS_ASSIGNED=1
int16 STATUS_PREEMPTED=2
int16 STATUS_WAIT=3

int16 status            # current status of this resource
time  availability      # estimated time of availability (zero if unknown)
