#!/usr/bin/env ash

if [ "$1" != '' ] ; then
  set -- vim "$@"
else
  ln -sf /root/dotfiles/.zshrc /root/.zshrc
  set -- zsh "$@"
fi

exec "$@"

