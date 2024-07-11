# This is how you manage your sessions
# you can create a new sesssion, which will copy the
# example.sh file with a name of your choosing
# and you can edit from there

check_for_project() {
	printf 'check: %s\n' "$1"
}

new_project() {
	printf 'new: %s\n' "$1"
}

load_project() {
	printf 'load: %s\n' "$1"
}

edit_project() {
	printf 'edit: %s\n' "$1"
}
