### Allocate Resources
#
#   Rocon services send this message on the scheduler's input topic to
#   make or update their resource requests.  All resources they
#   current have or desire will be included.
#
#   If not all of the requested resources are immediately available,
#   the scheduler will queue those requests and provide feedback.  The
#   rocon service making these requests should wait until feedback
#   indicates the associated resources are available.  It may cancel
#   some requests at any time via an new allocation message.

Header header                   # Time of request, frame_id is irrelevant
uuid_msgs/UniqueID requester    # Unique identifier of requester
uint16 priority                 # Priority of requester's task
Request[] resources             # Resources desired
