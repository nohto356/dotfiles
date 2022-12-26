export DOTFILES_DIR="/home/nohtoit/dotfiles"
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH
if [ -e "${DOTFILES_DIR}/resources/.bash_profile.d/user.local.sh" ] ; then
    . "${DOTFILES_DIR}/resources/.bash_profile.d/user.local.sh"
fi

if [ -e "${DOTFILES_DIR}/resources/.bash_profile.d/generated.local.sh" ] ; then
    . "${DOTFILES_DIR}/resources/.bash_profile.d/generated.local.sh"
fi