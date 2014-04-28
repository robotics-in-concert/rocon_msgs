# Error types for interactions

int8 SUCCESS = 0

int8 INTERACTION_UNAVAILABLE = 20    # The requested role-app pair is not available
int8 INTERACTION_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached 
int8 START_PAIRED_RAPP_FAILED = 22   # If a paired rapp fails to start.

string MSG_INTERACTION_UNAVAILABLE = "This role-app pair is not available for use."
string MSG_INTERACTION_QUOTA_REACHED = "More connections of this type not permitted."
string MSG_START_PAIRED_RAPP_FAILED = "Failed to start the paired rapp"