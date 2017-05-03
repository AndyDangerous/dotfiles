# Dotfiles

I like the configuration that I use at work, but broke all the things when I tried to [install it](https://github.com/hashrocket/dotmatrix) on my machine.
This repo should make some of the things easier to keep track of.
I did borrow their .vimbundle and the associated shell script because it seems like an easy and lightweight way to keep track of vim plugins.

### Install the dotfiles

##### HEADS UP

You may not want to run the setup script since it's a little heavy-handed. If you have some extant dotfiles then you can probably pick and choose what you want from here.

1. clone this repo
1. `cd` into the cloned dotfiles repo
1. `bin/setup.sh` will copy the dotfiles to your home directory, install pathogen, and install your vim plugins

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
You can also use the [.vim](https://github.com/andydangerous/.vim) repo, if it's up to date.
That route is *really* janky though.

It's also an easy and janky place from which to copy my colorschemes into my `~/.vim/`

### Requirements

You'll need to install some software (duh).

* git
* tmux
* [Ag](https://github.com/ggreer/the_silver_searcher)


### TODOs

- [ ] tmux window names are still janky (`#12W`)
- [ ] some better system for managing `.vim/`
- [ ] clean up trailing whitespace automatically
