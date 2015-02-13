# Thanks to

* @mathias for the [OSX defaults](https://github.com/mathiasbynens/dotfiles)
* @robbyrussell for [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh)

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

Install the tools:
`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

Then run our tasks:
`osx/brew.sh`