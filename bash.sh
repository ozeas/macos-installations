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
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh

# Install font tools.
brew tap homebrew/cask-fonts

brew install --cask font-fira-code
brew install --cask font-consolas-for-powerline

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
brew install dockutil
brew install git
brew install git-extras
brew install git-lfs
brew install imagemagick --with-webp
brew install nvm
brew install tree
brew install wget
brew install zsh

## Visual
brew install --cask android-file-transfer
brew install --cask google-chrome
brew install --cask iterm2
brew install --cask spectacle
brew install --cask spotify
brew install --cask deezer
brew install --cask telegram
brew install --cask the-unarchiver
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask zoom

# Remove outdated versions from the cellar.
brew cleanup
