#! /bin/sh

# This is how you manage your sessions
# you can create a new sesssion, which will copy the 
# example.sh file with a name of your choosing
# and you can edit from there
#

check_for_project() {
  echo "checking for project $1"
  if [ ! -f "${1}".sh ]; then
    cat << EOF
      Project not found.
      Did you spell it right?
      or did you mess this up, like you always do?
EOF
    return 1
  fi
}

new_project() {
  # create a new project
  # argument is the project name
  if [ ! -f "$ROOT/example.sh" ]; then
    cat << EOF
      example.sh not found.
      WHAT THE HELL DID YOU DO?!
EOF
    return 1
  fi


  if [ -f "${1}".sh ]; then
    cat << EOF
      Project already exists.
      come on, figure it out.
      All your friends have figured this out.
      why can\'t you?
EOF

    return 1
  fi
  cp example.sh "${1}".sh
  "$EDITOR" "${1}".sh
}

load_project() {
  # load a project
  # argument is the project name
  if check_for_project "${1}"; then
    . "${1}".sh
  else
    return 1
  fi
}

edit_project() {
  # edit a project
  # argument is the project name
  if check_for_project "$1"; then
    "$EDITOR" "${1}".sh
  else
    return 1
  fi
}
