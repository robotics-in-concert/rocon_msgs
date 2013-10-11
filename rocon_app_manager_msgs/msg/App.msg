# app name
string name
# user-friendly display name
string display_name
string description
string platform
string status

# icon for showing the app
Icon icon

#  ordered list (by preference) of pairing clients to interact with this robot app.
PairingClient[] pairing_clients

# list of capabilities required for this app to run
string[] required_capabilities