# loading path
set -xg PATH $PATH /sbin/ $HOME/bin/
set -xg SDKMAN_DIR "/home/mkarmona/.sdkman"

# universal EDITOR var
set -U EDITOR vim
set -U PAGER less
set -U SHELL /usr/bin/fish

alias 7zaa="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias open-targets="gcloud --project open-targets"
alias open-targets-eu-dev="gcloud --project open-targets-eu-dev"
alias open-targets-library="gcloud --project open-targets-library"
alias open-targets-staging="gcloud --project open-targets-staging"
# alias git-remove-untracked='git fetch --prune && git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 < (git branch -vv | grep origin) | awk "{print \$1}" | xargs git branch -d'

set -l PYTHONFILE "$HOME/.pythonrc"
if test -s $PYTHONFILE
    echo "exporting $PYTHONFILE to PUTHONSTARTUP"
    export PYTHONSTARTUP=$PYTHONFILE
end

set -l JAVA_PATH $HOME"/bin/export_java.sh"
set -l GCLOUD_SDK "$HOME/opt/google-cloud-sdk/path.fish.inc"
mk_source_pathfile $JAVA_PATH $GCLOUD_SDK

set -l TERRAFORM "/home/mkarmona/opt/terraform_0.11.7"
set -xg PATH $PATH $TERRAFORM
