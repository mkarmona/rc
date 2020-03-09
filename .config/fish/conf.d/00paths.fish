set -xg PATH $PATH /sbin/
set -xg PATH $PATH $HOME/bin/
set -xg PATH $PATH /usr/sbin/
set -xg PATH $PATH /usr/local/sbin/ 
set -xg PATH $PATH $HOME/.local/bin/ 
set -xg PATH $PATH $HOME/.local/share/coursier/bin/

set -xg SDKMAN_DIR "/home/mkarmona/.sdkman"
source $HOME/.cargo/env
