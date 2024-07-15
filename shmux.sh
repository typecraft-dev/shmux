#! /bin/sh

. ./util/management.sh
. ./util/functions.sh
. ./util/utils.sh

shmux() {
  while :; do
    case $1 in
    -h | -\? | --help | help)
      show_help
      return 0
      ;;
    check | check_for_project)
      if [ "$2" != "" ]; then
        shift
        check_for_project "$@"
      else
        print_error "$1"
        return 1
      fi
      ;;
    new | new_project)
      if [ "$2" != "" ]; then
        shift
        new_project "$@"
      else
        print_error "$1"
        return 1
      fi
      ;;
    load | load_project)
      if [ "$2" != "" ]; then
        shift
        load_project "${LAYOUT_ROOT}/${1}"
      else
        print_error "$1"
        return 1
      fi
      ;;
    edit | edit_project)
      if [ "$2" != "" ]; then
        shift
        edit_project "$@"
      else
        print_error "$1"
        return 1
      fi
      ;;
    --) # End of all options. Passthru additional options to tmux?
      shift
      break
      ;;
    -?*)
      printf 'ERROR: Unknown option: %s\n' "$1" >&2
      return 1
      ;;
    *) # Default case: If no more options then break out of the loop.
      break ;;
    esac

    shift
  done
}
