###### Gateway information ######
string name
#TODO blocking status,health
bool firewall

###### Public Interface ######

Rule[] public_interface

# Should we show flipped and foreign interfaces? 
# Would be very useful for debugging, but means we need to splash 
# the redis server with alot more information.
#    https://github.com/robotics-in-concert/rocon_multimaster/issues/84

###### Flipped Interface ######

# Awaiting implementation - need to post details on the hub
RemoteRule[] flipped_interface
RemoteRule[] flipped_watchlist

###### Foreign Interface ######

# Should we show these?

# RemoteRule[] flipped_in_connections
# RemoteRule[] pulled_connections
