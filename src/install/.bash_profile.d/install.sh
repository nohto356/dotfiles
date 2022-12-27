echo "Install bash_profile..."

if [[ $(check-os) == "linux" ]]; then
    echo "[[ -r \"/home/linuxbrew/.linuxbrew/etc/profile.d/bash_completion.sh\" ]] && . \"/home/linuxbrew/.linuxbrew/etc/profile.d/bash_completion.sh\"" > ${SCRIPT_DIR}/resources/.bash_profile.d/generated.local.sh
fi
if [[ $(check-os) == "mac" ]]; then
    echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion ; export PATH=\"\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin\"" > ${SCRIPT_DIR}/resources/.bash_profile.d/generated.local.sh
fi


if [ -e "~/.bash_profile" ] ; then
    mv ~/.bash_profile "${SCRIPT_DIR}/resources/.bash_profile.d/user.local.sh"
fi

ln -s "${SCRIPT_DIR}/resources/.bash_profile.d/.bash_profile" ~/.bash_profile

source ~/.bash_profile

echo "Install bash_profile completed."