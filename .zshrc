# rupa/z-jump-around
. ~/z.sh

PATH=$PATH":/Library/TeX/texbin/"
PATH=$PATH":/Users/pranav/Downloads/apache-maven-3.9.6/bin"
PATH=$PATH":/Applications/IntelliJ IDEA.app/Contents/MacOS"

# autoload -Uz colors && colors
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%1~%f %F{red}${vcs_info_msg_0_}%f$ '

# custom prompt
# PROMPT= "%* %n@%m %1~ %#"
# PROMPT='[%*] '$PROMPT
# PROMPT='%F{green}[%*]%f %F{cyan}%n%f @ %F{red}%m%f %F{yellow}%1~%f %# '

# aliases
alias l="ls -lahrt"
alias ll="ls -lahrt"
alias crap="fuck"
alias sem="cd /Users/pranav/Lemon/BU/2024\ Fall"

ytmp3() {
	echo Downloading $1 from YouTube;
	yt-dlp $1 --extract-audio --format=m4a -o "$2.m4a" 
}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
 
# the fuck
eval $(thefuck --alias)
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
