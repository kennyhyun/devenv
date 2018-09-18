## Development environment using docker

This is to share development environment including system tools

- Easy to setup using docker
- Mount host directory as a user home directory

Check also https://github.com/kennyhyun/devenv/wiki/Docker and https://github.com/kennyhyun/devenv/wiki

### Prerequisites

- docker

### Usage

copy override file

```
cp docker-compose.sample-override.yml docker-compose.override.yml
```

and edit username and home directory.

and open a shell

```
docker-compose run devenv su - [USERNAME]
```

```
docker-compose build devenv
```

### Dotfiles

Consider using dotfiles to manage user settings
[oh-my-zsh]() improves much

```
sh -c sh -c ""$($(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -wget htt )"
```

Also checkout my [dotfiles](https://github.com/kennyhyun/dotfiles)

```
cd ~
git clone git@github.com:kennyhyun/dotfiles.git

./dotfiles/init.sh
```

### Included in the build

- [x] official ubuntu 1804 container
- [x] httpie
- [x] zsh
- [x] vim8
- [x] git
- [x] rsync
- [x] wget
- [x] tmux
- [x] python (v2)
- [X] build-essential

### Todos

- [ ] set some dotfiles
- windows host
  - [ ] how to set filemodes
  - [ ] check if faster file io can be used
- mac
  - [ ] check if filenames are case sensitive

