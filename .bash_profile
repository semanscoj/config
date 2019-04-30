
source ~/.bashrc

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/jeremeesemansco/.sdkman"
[[ -s "/Users/jeremeesemansco/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/jeremeesemansco/.sdkman/bin/sdkman-init.sh"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi
