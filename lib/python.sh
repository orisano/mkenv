type pyenv &> /dev/null || {
    curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
}
PYENV=~/.pyenv/bin/pyenv

$PYENV update

LATEST_VERSION=$($PYENV install -l |grep -v -e '-dev$' |grep -e '^\s*\d.' |tail -1)

$PYENV install $LATEST_VERSION
$PYENV global $LATEST_VERSION
