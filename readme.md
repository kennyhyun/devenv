## Development environment using docker

This is to share development environment including system tools

- Easy to setup using docker
- Mount host directory as a user home directory

Check also https://github.com/kennyhyun/devenv/wiki/Docker and https://github.com/kennyhyun/devenv/wiki

### Prerequisites

- docker

### usage

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

### Included in the build

- [x] httpie
- [x] zsh
- [x] vim8
- [ ] tmux

### Todos

- [ ] set some dotfiles
- [ ] check if faster file io can be used with windows host
- [ ] check if filenames are case sensitive with mac host

