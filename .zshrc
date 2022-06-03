# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$HOME/.specific:$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Other Exports
export TERM="kitty"
export EDITOR="nvim"
export VISUAL="nvim"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
        git
        autojump
        colored-man-pages
        gh
        git-extras
        gitfast
        github
        git-flow
        gitignore
        npm
        node
        pip
        python
        rust
        yarn
        zsh-syntax-highlighting
        )

source $ZSH/oh-my-zsh.sh

# Aliases
alias t="toipe"
alias mkd="mkdir -pv"
alias lock="betterlockscreen"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
