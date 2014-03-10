# app name (ros resource name format, i.e. pkg/name, e.g. turtle_concert/teleop)
string name
# user-friendly display name
string display_name
string description
# a rocon uri string indicating platform compatibility
string compatibility
string status

# icon for showing the app
rocon_std_msgs/Icon icon

#  ordered list (by preference) of pairing clients to interact with this robot app.
PairingClient[] pairing_clients

# list of capabilities required for this app to run
string[] required_capabilities
