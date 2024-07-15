. ./util/functions.sh

# Set up your project with a root dir, and name
project_root ~/Projects/my_project
session_name "my_project"

# first, create your session
new_session

# then, layout your session
rename_window "code"
run_command "nvim"
new_window "servers"
split_horizontal 50%

# at the end, select the window you want first
select_window "code"

# then, attach to your session!
attach_to_session
