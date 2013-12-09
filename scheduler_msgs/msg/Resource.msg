
# This is usually a uniquely identifying ros_package/rapp name identifier.
# This is unique because ros packages are necessarily unique. 
string name

# unique identifier to help custom requesters keep a tab on resources
# in the scheduler feedback.
uuid_msgs/UniqueID id

##############################################################################
# Hints
##############################################################################

# Platform Info. This is used in two ways by the scheduler:
#
# 1) When used as part of a scheduler Request, it acts as a filter, 
#    e.g. ubuntu.precise.ros.turtlebot.dude would lock it completely down,
#    even to the name applied to the robot. Wildcards, such as '*' are
#    acceptable.
# 2) When used as part of a scheduler Reply, it contains the platform
#    information of the concert client allocated. This is the platform_info
#    of the concert client itself, with the name part swapped out for the
#    unique concert name provided for the concert client client.
string platform_info

# Remappings which get passed on for starting the rapps. Also potentially for
# more esoteric use cases such as checking whether an app is sharable.
rocon_std_msgs/Remapping[] remappings

