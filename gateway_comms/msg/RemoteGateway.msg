###### Gateway information ######
string name
#TODO blocking status,health

###### Public Interface ######

PublicRule[] public_interface

# Should we show flipped and foreign interfaces? 
# Would be very useful for debugging, but means we need to splash 
# the redis server with alot more information.
#    https://github.com/robotics-in-concert/rocon_multimaster/issues/84

###### Flipped Interface ######

#FlipRule[] flipped_connections
#FlipRule[] flip_watchlist

###### Foreign Interface ######

# FlipRule[] flipped_in_connections
# Momo[] pulled_connections