## Specific Mac Notes

See Notion

## New System Startup

1. Open `Terminal`, clone dotfiles: `git clone https://github.com/ccorda/dotfiles.git`
2. Accept developer tools prompt to install that.
3. Install Homebrew: `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
4. Run `brew doctor`
5. Update OSX defaults: `sh osx/deafults.sh`
6. Run symlinks below
7. Set ZSH as default shell: `chsh -s /bin/zsh`
8. [Install NVM](https://github.com/nvm-sh/nvm#install--update-script): `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash`
9. Install various verisons of node, e.g. `nvm install 14 12 10`, `nvm alias default 12`
10. [Install GCP](https://medium.com/@tapendradev/how-to-install-gcloud-sdk-on-the-macos-and-start-managing-gcp-through-cli-d14d2c3a8869)

### Configure Lamp

### Symlinks

Run these on a new system to link to dotfiles versions

```
ln -s ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc
ln -s ~/projects/dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/projects/dotfiles/git/.gitignore_global ~/.gitignore_global
ln -s ~/.dotfiles/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s ~/.dotfiles/VSCode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
```

potentially in future:
```
ln -s ~/.dotfiles/VSCode/snippets/ ~/Library/Application\ Support/Code/User
```

### VS Code Plugins

You can see current plugins installed with this: `code --list-extensions`.

Current list, you can install these by running `code --install-extension foo.bar`

```
dbaeumer.vscode-eslint
EditorConfig.EditorConfig
esbenp.prettier-vscode
formulahendry.auto-close-tag
GitHub.vscode-pull-request-github
HookyQR.beautify
kenhowardpdx.vscode-gist
ms-python.python
naumovs.theme-oceanicnext
sysoev.vscode-open-in-github
```

