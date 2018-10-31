#!/usr/bin/env bash

# copy dotfiles to home directory
cp .aliases ~
cp .bash_profile ~
cp .gemrc ~
cp .pryrc ~
cp .tmux.conf ~
cp .vimbundle ~
cp .vimrc ~


# download all the vim bundles

bin/vim-bundle.sh
