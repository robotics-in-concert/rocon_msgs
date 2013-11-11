###############################################################
# Specifications non-modifiable by the solution/service
###############################################################
# These should be stored in a meta-repository somewhere.
#
# Name of the application. This should be the string required
# to install the application on the remocon's end. e.g. for
# android app this will be an intent action name such as
# com.github.rosjava.android_apps.listener.Listener, while for
# a web app it will be its URL.
string name

# The platforms this app can be expected to run on.
rocon_std_msgs/PlatformInfo platform_info

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

# The service name (unique) that this app will be associated
# with in the running concert. Use this to push down into
# namespace /services/_service_name_
string service_name

# Again, should exist a default, but may want to override it.
rocon_std_msgs/Icon icon

# Any remappings that need to be applied
rocon_std_msgs/Remapping[] remappings

# Yaml string representing parameters for the app
string parameters

# Maximum number of permitted connections (-1 = any)
int32 max
