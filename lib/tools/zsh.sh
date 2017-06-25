brew install zsh

MY_ZSH='/usr/local/bin/zsh'
[ $SHELL != $MY_ZSH ] && {
    grep "$MY_ZSH" /etc/shells || {
        echo "$MY_ZSH" | sudo tee -a /etc/shells
    }
    chsh -s $MY_ZSH
}
