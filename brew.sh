#!/usr/bin/env bash

# Install misc tools using Homebrew.
brew install --cask firefox
brew install --cask anki
brew install --cask calibre
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask iterm2
brew install --cask alt-tab
brew install --cask rectangle

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh
brew install screen
brew install gmp

# Install other useful binaries.
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install p7zip
brew install neovim

# Remove outdated versions from the cellar.
brew cleanup

# Install oh-my-zsh and pl10k
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k