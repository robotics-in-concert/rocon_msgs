
# This is usually a uniquely identifying ros_package/rapp name identifier.
# This is unique because ros packages are necessarily unique. 
string name

##############################################################################
# Hints
##############################################################################

# Platform filter - could use a string here, or the PlatformInfo msg itself.
# Strings are easier and can be validated through appropriate api written
# for them.
string platform_info

# Remappings, if we use the scheduler to start apps, or for more esoteric use
# cases, such as checking whether an app is sharable.
rocon_std_msgs/Remapping[] remappings

