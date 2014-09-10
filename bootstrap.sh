function die()
{
    echo "${@}"
    exit 1
}

mkdir -p ${HOME}/.zsh
git clone https://github.com/iltempo/zsh_config.git ${HOME}/.zsh
cd $HOME/.zsh || die "Could not go into the ${HOME}/.zsh"
rake install || die "rake install failed."
