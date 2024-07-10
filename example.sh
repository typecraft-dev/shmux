. $HOME/.shmux/launcher.sh

project_root ~/dotfiles
session_name "my_shmux_session"

if session_exists 2>/dev/null; then
  attach_to_session
else
  new_session
  rename_window "code"
  run_command "nvim"
  new_window "servers"
  split_horizontal 50%

  attach_to_session
fi

