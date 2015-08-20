# Properties of a paired app that is destined to work with a rocon interaction.

# ros resource name of the rapp, e.g. rocon_apps/talker
string rapp

# Whether this interaction should bringup the rapp if needed and also shut it down
bool control_rapp_lifecycle

rocon_std_msgs/Remapping[] remappings

# Key value pairs representing rapp parameters
rocon_std_msgs/KeyValue[] parameters
