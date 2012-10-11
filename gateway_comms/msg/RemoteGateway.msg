###### Gateway information ######
string name
#TODO blocking status,health

###### Public Interface ######

Rule[] public_interface

###### Flipped Interface ######

RemoteRule[] flipped_connections
RemoteRule[] flip_watchlist

###### Foreign Interface ######

# Should we show these?

# RemoteRule[] flipped_in_connections
# RemoteRule[] pulled_connections
