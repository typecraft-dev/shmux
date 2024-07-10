. ./launcher.sh

project_root ~/dotfiles
session_name "final_dotfiles"

new_session
rename_window "code"
run_command "nvim"
new_window "servers"
split_pane 50% -v

attach_to_session
