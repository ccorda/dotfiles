# New System Startup

1. Open `Terminal`, clone dotfiles: `git clone https://github.com/ccorda/dotfiles.git`
2. Accept developer tools prompt to install that.
3. Install Homebrew: `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
4. Run `brew doctor`
5. Get all packages with Brew: `sh osx/brew.sh`
6. Update OSX defaults: `sh osx/deafults.sh`
7. Set ZSH as default shell: `chsh -s /bin/zsh`

Specific Mac Notes

1. Open `Dropbox`, download all files.
2. *Alfred*: Install license from `dropxbox/apps/alfred-license.txt`
2. Open `Google Chrome`, sync profile.
3. Open `Adobe Creative Cloud`, 



# Symlinks

Run these on a new system

```
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
ln -s ~/projects/dotfiles/sublime/ "~/Library/Application Support/Sublime Text 3/Packages/User"
ln -s ~/projects/dotfiles/zsh/zshrc.symlink ~/.zshrc
ln -s ~/projects/dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/projects/dotfiles/git/.gitignore_global ~/.gitignore_global
```

# Brew


Then run our tasks:


# Thanks to

* @mathias for the [OSX defaults](https://github.com/mathiasbynens/dotfiles)
* @robbyrussell for [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh)