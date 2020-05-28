# New System Startup

1. Open `Terminal`, clone dotfiles: `git clone https://github.com/ccorda/dotfiles.git`
2. Accept developer tools prompt to install that.
3. Install Homebrew: `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
4. Run `brew doctor`
5. Update OSX defaults: `sh osx/deafults.sh`
7. Set ZSH as default shell: `chsh -s /bin/zsh`

Specific Mac Notes

1. Open `Dropbox`, download all files.
2. *Alfred*: Install license from `dropxbox/apps/alfred-license.txt`
3. Open `Google Chrome`, sync profile.
4. Open `Adobe Creative Cloud`, download apps
5. Open Mac App store, download whatever is needed 

# Symlinks

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