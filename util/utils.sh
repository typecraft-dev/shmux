#! /bin/sh

ROOT="$HOME/.config/shmux"
LAYOUT_ROOT="$ROOT/layouts"

show_help() {
  cat <<EOF
  oh you need help? man. what a loser.
  Just kidding, here is some info

  ${LAYOUT_ROOT} is the directory where all the layouts are stored
  ${ROOT} is the file where the default layout is stored

  Usage:
    -h, --help: show this help message
    check, check_for_project: [project_name] check if a project exists [project_name]
    new, new_project: [project_name] create a new project with name [project_name]
    load, load_project: [project_name] load a project with name [project_name]
EOF
}
