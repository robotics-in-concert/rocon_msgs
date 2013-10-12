###############################################################
# Specifications non-modifiable by the solution/service
###############################################################
# These should be stored in a meta-repository somewhere.
#
# Name of the application. This should be the string required
# to install the application on the remocon's end. e.g. for
# android this will be an intent action name such as
# com.github.rosjava.android_apps.listener.Listener.
string name
# The platform tuple it will run on 
# It takes the format of a '.' separated tuple with each part
# specifying the relevant parts in rocon_std_msgs.PlatformInfo
# except for the name and icon variables. e.g.
# 
#   ubuntu.precise.turtlebot.ros
#   linux.*.turtlebot.ros
#   android.jellybean.tablet.rosjava
string platform_info

###############################################################
# Variable specifications modifiable by the solution/service
###############################################################

# User friendly version of the name. Useful to be customised
# differently from the name for either 1) branding, or 2) because
# some names are complicated visually (e.g. android names).
string display_name 
# Should be a default for the app, but sometimes useful to
# override it to provide more human friendly information.
string description

# Again, should exist a default, but may want to override it.
rocon_std_msgs/Icon icon
