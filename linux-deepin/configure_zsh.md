### configure and install 
```
$ sudo apt-get install -y zsh
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### make zsh as default shell
```
$ chsh -s $(which zsh) 
或者
$ chsh -s /bin/zsh 
```

### [percol](https://github.com/mooz/percol)
```
$ sudo pip install percol
$ emacs ~/.zshrc 
```
> In your .zshrc, put the lines below.
```
function exists { which $1 &> /dev/null }

if exists percol; then
    function percol_select_history() {
        local tac
        exists gtac && tac="gtac" || { exists tac && tac="tac" || { tac="tail -r" } }
        BUFFER=$(fc -l -n 1 | eval $tac | percol --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N percol_select_history
    bindkey '^R' percol_select_history
fi
```

### apply
```
$ source ~/.zshrc
```
