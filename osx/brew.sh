#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# Install our custom packages:

brew install awscli
brew install composer
brew install git
brew install heroku-toolbelt
brew install hub
brew install mongodb
brew install mysql
brew install node
brew install php55
brew install postgresql
brew install redis
brew install zsh

# Cask mac apps

brew install caskroom/cask/brew-cask

brew cask install 1password
brew cask install alfred
brew cask install adobe-creative-cloud
brew cask install appcleaner
brew cask install dropbox
brew cask install google-chrome
brew cask install google-drive
brew cask install iterm2
brew cask install flux
brew cask install one-password
brew cask install rescuetime
brew cask install screenhero
brew cask install sequel-pro
brew cask install sketch
brew cask install sourcetree
brew cask install spotify
brew cask install sublime-text
brew cask install virtualbox
brew cask install vlc

# Remove outdated versions from the cellar.
brew cleanup