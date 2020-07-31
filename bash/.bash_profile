alias ls="ls -G"
alias ll="ls -al -G"
alias vi="vim"
alias venv=". venv/bin/activate"
alias python="python3"
alias pip="pip3"
alias flatcoke="ssh -i ~/.ssh/pems/LightsailDefaultKey-ap-northeast-2.pem ubuntu@flatcoke.com"

function EXT_COLOR () { echo -ne "\[\033[38;5;$1m\]"; }
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

PS1="\`echo \$?\` "
PS1=$PS1"`EXT_COLOR 160`\$(parse_git_branch)"
PS1=$PS1"`EXT_COLOR 172`(j\j\$(/usr/bin/tty | /usr/bin/sed -e 's/dev\/tty//')) "
PS1=$PS1"`EXT_COLOR 230 `(\h) "
PS1=$PS1"`EXT_COLOR 191`\u"
PS1=$PS1"`EXT_COLOR 151` \w"
PS1=$PS1"\[\033[00m\] $ "

export PS1

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# for Hangle is breaked
LC_CTYPE="ko_KR.UTF-8"
