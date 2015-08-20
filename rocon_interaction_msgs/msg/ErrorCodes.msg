# Error types for interactions

int8 SUCCESS = 0

# Interaction errors
int8 INTERACTION_UNAVAILABLE = 20    # The requested role-app pair is not available
int8 INTERACTION_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached 

# Pairing errors
int8 START_PAIRED_RAPP_FAILED     = 31   # If a paired rapp fails to start.
int8 ALREADY_PAIRING              = 32   # If trying to start a pairing, but already pairing
int8 REQUIRED_RAPP_IS_NOT_RUNNING = 33   # No rapp is running and this pairing interaction requires one to be
int8 DIFFERENT_RAPP_IS_RUNNING    = 34   # A rapp with a different spec. to this pairing requirements is alrady running

string MSG_INTERACTION_UNAVAILABLE                  = "This role-app pair is not available for use."
string MSG_INTERACTION_QUOTA_REACHED                = "More connections of this type not permitted."
string MSG_REQUIRED_RAPP_IS_NOT_RUNNING             = "No rapp is running and this pairing interaction requires one to be."
string MSG_DIFFERENT_RAPP_IS_RUNNING                = "A different rapp to that required is already running."
string MSG_START_PAIRED_RAPP_FAILED                 = "Failed to start the paired rapp."
string MSG_ALREADY_PAIRING                          = "Already pairing, cannot start another pairing."