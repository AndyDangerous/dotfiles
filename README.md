# Dotfiles

I like the configuration that I use at work, but broke all the things when I tried to [install it](https://github.com/hashrocket/dotmatrix) on my machine.
This repo should make some of the things easier to track.
I did borrow their .vimbundle and the associated shell script because it seems like an easy and lightweight way to keep track of vim plugins.

### Install the dotfiles

##### HEADS UP

You may not want to run the setup script since it's a little heavy-handed. If you have extant dotfiles then you can probably pick and choose what you want from here.

1. clone this repo
1. `cd` into the cloned dotfiles repo
1. `bin/setup.sh` will copy the dotfiles to your home directory, and install vim plugins (and a colorscheme)

### What's in here?

| file          | description   |
|:-------------:|---------------|
| .aliases      | shell, tmux, and git aliases are all sourced by the `.bash_profile` |
| .bash_profile | a bunch of settings and a sweet prompt from Josh Cheek |
| .gemrc        | probably too much in here, but the important thing is the `no-ri` and `no-doc` |
| .gitconfig    | Sets a few git things like user, email, autorebase branches, and push defaults to simple |
| .pryrc        | turns the damn pager off |
| .tmux.conf    | pretty much lifted verbatim from dotmatrix. Keeps tmux the way I like it. |
| .vimbundle    | just a list of vim bundle repos |
| .vimrc        | just right |

### Gotchas

The `bin/vim-bundle.sh` script only kind of works.
Make sure you get all the packages or things will be a little janky.

### Requirements

You'll need to install some software (duh).

* vim 8 (neovim might work too, but idk)
* git
* tmux
* [Ag](https://github.com/ggreer/the_silver_searcher)


### TODOs

- [ ] tmux window names are still janky (`#12W`)
- [ ] clean up trailing whitespace automatically
