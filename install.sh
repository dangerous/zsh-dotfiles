#!/bin/sh
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

ln -sf "$DOTFILES/zshrc" ~/.zshrc
ln -sf "$DOTFILES/zshenv" ~/.zshenv

echo "Done. Symlinked .zshrc and .zshenv"
