# Use this message to send/receive live information about the interaction
# manager's state relevant to pairing.

# This is useful for remocons to know when a rapp goes up/down or to
# provide control updates about core one-sided pairs.

# The hash id of the active core interaction (one sided pair).
# Remocons should highlight this as a running interaction in their views.
bool is_managing_one_sided_interaction
int32 active_one_sided_interaction

# Whether it's a core pair or otherwise, this signals whether is at least
# one paired interaction active. In other words, the interaction manager
# is managing a running rapp on the rocon app manager.

bool is_managing_paired_interactions