###### Gateway information ######
string name
string ip
#TODO blocking status,health
bool firewall

###### Public Interface ######

Rule[] public_interface


###### Flipped Interface ######

# Flipped and pulled interfaces would be useful for debugging 
#    https://github.com/robotics-in-concert/rocon_multimaster/issues/84

RemoteRule[] flipped_interface
RemoteRule[] pulled_interface

###### Foreign Interface ######

# Q) Should we show these?
# A) Probably not, in the overall scheme of things, 
#    it doubles up the information from above

# RemoteRule[] flipped_in_connections
# RemoteRule[] pulled_connections
