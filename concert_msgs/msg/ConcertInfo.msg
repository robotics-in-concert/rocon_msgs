# Publish basic information about the concert.
#
# Predefined variables:
#
#  name
#  description
#  icon
# Runtime variables:
#  id
#
# Note: all predefined variables should be allowed to be overridable by solution
# configuration to provide more relevant information where feasible.
#

string name
uuid_msgs/UniqueID id
string description
rocon_std_msgs/Icon icon
