# States of concert clients, these should always be synced with what is provided in ConductorGraph.msg
# (for completeness, but also because I do some funny magic to extra the possible list of states from there). 

# pending introspection, the client's advertised handles have not yet been pulled in so we can't do anything yet
string PENDING   = pending
# the ip is invalid, unreachable or some other problem meaning we have to absolutely ignore it
string BAD       = bad
# happens if it is firewalling, we are remote and it is local only, we aren't in its whitelist, or in its blacklist
string BLOCKING  = blocking
# busy serving another remote controller
string BUSY      = busy
# waiting for a concert to invite it
string UNINVITED = uninvited
# in the middle of joining (or rejecting) an invitation from our concert
string JOINING   = joining
# is available for use inside this concert
string AVAILABLE = available
# has lost connection (wireless)
string MISSING   = missing
# has left the concert
string GONE      = gone
