# app name
string name
# user-friendly display name
string display_name
string description
string platform
string status

# how many services can share this rapp?
uint16 share

# icon for showing the app
rocon_std_msgs/Icon icon
#  ordered list (by preference) of pairing clients to interact with this robot app.
PairingClient[] pairing_clients
