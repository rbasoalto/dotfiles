path_remove () { export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//' | sed 's/$://'`; }
path_append () { path_remove $1; export PATH="$PATH:$1"; }
path_prepend () { path_remove $1; export PATH="$1:$PATH"; }

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Homebrew binaries first
    path_prepend /usr/local/bin
fi

path_prepend ~/bin

if [[ "$OSTYPE" == "darwin"* ]]; then
    export JAVA_HOME=$(/usr/libexec/java_home)
fi
