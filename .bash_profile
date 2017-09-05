export PS1='\u@\H:\w$'
alias ll='ls -laF'
alias grep='grep -nRI --color=always --exclude-dir=.git --exclude=*tag*'
alias ..='cd ..'
alias ...='cd ../..'
alias goNode='cd ~/Work/nodejs/TestGit/NodeJs'
alias ctags="`brew --prefix`/bin/ctags"

##
# Your previous /Users/newuser/.bash_profile file was backed up as /Users/newuser/.bash_profile.macports-saved_2017-03-19_at_17:19:29
##

# MacPorts Installer addition on 2017-03-19_at_17:19:29: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Setting PATH for laravel
export PATH="~/.composer/vendor/bin:/usr/local/bin:$PATH"
