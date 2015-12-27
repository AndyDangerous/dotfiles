# Dotfiles

I like the configuration that I use at work, but broke all the things when I tried to [install it](https://github.com/hashrocket/dotmatrix) on my machine.
This repo should make some of the things easier to keep track of.
I did borrow their .vimbundle and the associated shell script because it seems like an easy and lightweight way to keep track of vim plugins.
I just copy each of these into the home directory, e.g. `cp * ~`.

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

### Requirements

You'll need to install some software (duh).

* git
* tmux


### TODOs

- [ ] C-p search is broken
- [ ] new windows/panes should remember working dir
- [ ] tmux window names are still janky (`#12W`)
- [ ] some better system for managing `.vim/`
- [ ] clean up trailing whitespace automatically
