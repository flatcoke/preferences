export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH
export JAVA_HOME="/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home"
export PATH=${PATH}:$JAVA_HOME/bin

function EXT_COLOR () { echo -ne "\[\033[38;5;$1m\]"; }
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}
