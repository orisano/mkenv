cat <<EOF > install.sh

$(cat lib/brew.sh)

$(cat lib/*.sh)

$(cat lib/tools/*.sh)
