#!/usr/bin/env bash

# Install command-line tools using Homebrew.

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

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed
# Install Bash 4.
brew install bash
brew install bash-completion2

# Install ZSH
brew install zsh
brew install starship

# Install `wget` with IRI support.
brew install wget
brew install curl

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install gmp

# Install other useful binaries.
brew install git
brew install git-lfs
brew install ssh-copy-id
brew install tree
brew install exa
brew install neofetch

# install casks
brew install --cask google-chrome
brew install --cask slack
brew install --cask telegram-desktop
brew install --cask visual-studio-code
brew install --cask iterm2
brew install --cask alfred
brew install --cask rectangle
brew install --cask postman
brew install --cask tableplus
brew install --cask figma
brew install --cask notion

# install programming languages and frameworks
brew install node
brew install yarn

# Remove outdated versions from the cellar.
brew cleanup
