### ROCON resource current status.
#
#   A ROCON scheduler uses this message to report the status of each
#   single resource it manages.
#

##############################################################################
# Resource Identification
##############################################################################

#   Canonical ROCON identifier for this specific resource, typically a
#   fully-resolved URI in the form:
#
#      rocon:///os/version/system/platform/name
#
string platform_info

##############################################################################
# Status
##############################################################################

uint8 status            # Current status of this resource

#  Status value labels:
uint8 AVAILABLE   = 0   # Available for use
uint8 ALLOCATED   = 1   # Allocated to some ROCON request
uint8 MISSING     = 2   # Not currently responding

#   The owner is the unique identifier of the Request message to which
#   this resource is currently assigned, or a zero UUID if it is not
#   assigned.  An AVAILABLE resource never has an owner, but a MISSING
#   one might.
uuid_msgs/UniqueID owner

#   List of ROCON application names currently available with this
#   resource. The name string is usually a "ros_package/rapp"
#   identifier, unique because ros package names are unique.  The
#   contents of this list could change over time due to the device's
#   own activities.
string[] rapps
