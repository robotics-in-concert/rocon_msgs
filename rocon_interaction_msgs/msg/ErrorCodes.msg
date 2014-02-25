# Error types for concert components

# General
int8 SUCCESS = 0

# Role Manager
int8 ROLE_APP_UNAVAILABLE = 20  # The requested role-app pair is not available
int8 ROLE_APP_QUOTA_REACHED = 21  # Maximum number or role-app connections already reached 

string MSG_ROLE_APP_UNAVAILABLE = "This role-app pair is not available for use."
string MSG_ROLE_APP_QUOTA_REACHED = "More connections of this type not permitted."
