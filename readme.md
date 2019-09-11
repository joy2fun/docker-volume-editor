
# docker volume editor

custom command :

```sh
ved () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --volume $EDITOR_VOLUME:/src \
        --volume $HOME/dotfiles:/root/dotfiles \
        --volume $HOME/.vim:/root/.vim \
        --volume $HOME/.oh-my-zsh:/root/.oh-my-zsh \
        --volume $HOME/.ssh:/root/.ssh \
        --volume $HOME/.gitconfig:/root/.gitconfig \
        -h ved \
        editor "$@"
}
```

usage:

```sh
EDITOR_VOLUME=your_volume_name
ved /path/to/volume_file
```

## php editor

```sh
phpdev () {
    tty=
    tty -s && tty=--tty
    docker run \
        $tty \
        --interactive \
        --rm \
        --network host \
        --volume $PWD:/src \
        --volume $HOME/dotfiles:/root/dotfiles \
        --volume $HOME/.vim:/root/.vim \
        --volume $HOME/.oh-my-zsh:/root/.oh-my-zsh \
        --volume $HOME/.ssh:/root/.ssh \
        --volume $HOME/.gitconfig:/root/.gitconfig \
        php:editor "$@"
}
```

