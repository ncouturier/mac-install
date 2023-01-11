#!/bin/sh

PACKAGES=(
    git
    imagemagick
    npm
    postgresql
    python
    python3
    mas
    gh
    stow
    poetry
    clojure/tools/clojure
    coursier
    chezmoi
    pyenv
)

CASKS=(
    google-chrome
    firefox
    raycast
    alfred
    spectacle
    logseq
    linear-linear
    obsidian
    cron
    discord
    slack
    notational-velocity
    loom
    zoom
    notion
    warp
    intellij-idea-ce
)

echo "Starting bootstrapping"

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing cask apps..."
brew install --cask ${CASKS[@]}

echo "Installing cocoapods"
sudo gem install cocoapods


# Show filename extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
