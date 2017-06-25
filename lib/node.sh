type nodebrew &>/dev/null || {
    curl -L git.io/nodebrew | perl - setup
}
NODEBREW=~/.nodebrew/current/bin/nodebrew

$NODEBREW selfupdate
$NODEBREW install-binary latest
$NODEBREW use latest
