echo "Install vscode..."

if [[ $(check-os) == "linux" ]]; then
    if [ ! -d "~/.config/Code/User" ] ; then
        mkdir -p "~/.config/Code/User"
    fi

    if [ -e "${HOME}/.config/Code/User/settings.json" ] ; then
        rm -i "${HOME}/.config/Code/User/settings.json"
    fi

    ln -s "${SCRIPT_DIR}/resources/.vscode/settings.json" "${HOME}/.config/Code/User/settings.json"
fi
if [[ $(check-os) == "mac" ]]; then
    if [ -e "${HOME}/.config/Code/User/settings.json" ] ; then
        rm -i "${HOME}/Library/Application Support/Code/User/settings.json"
    fi

    ln -s "${SCRIPT_DIR}/resources/.vscode/settings.json" "${HOME}/Library/Application Support/Code/User/settings.json"
fi

if [ ! -d "~/.vscode" ] ; then
    mkdir "~/.vscode"
fi
if [ -e "${HOME}/.vscode/argv.json" ] ; then
    rm -i "${HOME}/.vscode/argv.json"
fi
ln -s "${SCRIPT_DIR}/resources/.vscode/argv.json" "${HOME}/.vscode/argv.json"

code --install-extension "angular.ng-template"
code --install-extension "wallabyjs.quokka-vscode"
code --install-extension "vscodevim.vim"
code --install-extension "ms-vscode-remote.remote-containers"
code --install-extension "ms-azuretools.vscode-docker"
code --install-extension "hediet.vscode-drawio"
code --install-extension "usernamehw.errorlens"
code --install-extension "dbaeumer.vscode-eslint"
code --install-extension "redhat.vscode-yaml"
code --install-extension "42crunch.vscode-openapi"
code --install-extension "yzhang.markdown-all-in-one"
code --install-extension "ecmel.vscode-html-css"
code --install-extension "eamodio.gitlens"
code --install-extension "visualstudioexptteam.vscodeintellicode"
code --install-extension "mhutchie.git-graph"

echo "Install vscode completed."