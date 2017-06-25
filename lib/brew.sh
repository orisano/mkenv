type brew &> /dev/null || {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}
brew update
brew prune
brew upgrade
brew install git
brew tap caskroom/cask
