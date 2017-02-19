# zsh-dotfiles

Assuming the repo is checked out to `~/git/zsh-dotfiles`, one just needs to checkout submodules and create symlinks to the repo.

```
cd ~/git/zsh-dotfiles
git submodule update --init
cd ~
ln -s git/zsh-dotfiles/zshrc .zshrc
```
