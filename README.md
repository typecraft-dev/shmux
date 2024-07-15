## SHMUX
Shmux is a tmux session management tool written purely in shell script. It's designed to be a simple and lightweight project layout management tool. You can specify a layout for any project, including root directory, windows, panes, and programs to run in each pane.

It's also a little bit of a sassy bitch, so be prepared for that.

### Installation
#### You'll want to clone this repository to a base dir.
```bash
git clone https://github.com/typecraft-dev/shmux.git $HOME/.config/
```
#### Then, source the management.sh file
*zsh*
```bash
# Add this to your .zshrc
source ~/.config/shmux.sh
```

*bash*
```bash
# add this to your .bashrc
source ~/.config/shmux.sh
```

*fish*
``` bash
# fuck you
```

### Usage

#### Create a new project layout
You can create a new project and open the example template file
```bash
shmux new "project_name"
```
Then, you can edit the template file to suit your needs.

#### Edit your project layout
Any time you want to edit the layout to a project. Just do it. moron
```bash
shmux edit "project_name"
```
#### Load your project
When you open a new shell, you can just load this shit. No biggie, nerd.
```bash
shmux load "project_name"
```
this will load tmux and attach to the layout you defined in "project_name"
