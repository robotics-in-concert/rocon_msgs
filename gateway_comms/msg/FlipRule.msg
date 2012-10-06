# Definition for a flip. It represents either:
#
# 1) an existing flipped connection (from the local gateway)
# 2) a rule that is put on a watchlist

# The target recipient of the flip
string gateway

# If specified, the connection name will be remapped to this name
# in the remote gateway's workspace. If unspecified it will simply
# flip with the original name, but namespaced under the unique gateway name. 
# e.g. gateway1:/chatter -> gateway2:/gateway1/chatter. This is to help
# avoid conflicts.
string remapped_name

# Connection has the following parameters that need setting
# - name : fully qualified name of the connection (str)
# - type : connection type (str)
#  
# Use one of the types defined in Connection string constants:
#     (publisher, subscriber, service, action_client, action_server)
#
# - node : name of the node it originates from (str)(optional)
#
# Node name is necessary, for instance, if you have multiple subscribers
# publishing to a single topic. Most of the time it is not necessary,
# but in some cases it helps refine the rule. It helps refine the rule.
#
Connection connection
