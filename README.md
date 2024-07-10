## SHMUX
Shmux is a tmux session management tool written purely in shell script.

### Installation

This puts shmux in a consistent location, so that your session files can source it
```
git clone https://github.com/typecraft-dev/shmux ~/.shmux
echo "alias \"shmux\"=\"./.shmux\"" >> ~/.bashrc
```

### Usage

In a project directory, create a .shmux file, and run `shmux`
```
cp example.sh ~/Projects/my_app/.shmux
shmux
```

tada!

