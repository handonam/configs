# primary working directory
function tl() { cd ~/Workspace/"$@"; }


# git commands
function gst() { git status "$@"; }
function ga() { git add "$@"; }
function gd() { git diff --color-words="[^[:space:]]|([[:alnum:]]|UTF_8_GUARD)+" "$@"; }
function gl() { echo "git log --graph --stat "; git log --graph --stat "$@"; }
function gm() { git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d; }
function gitmod()  { git status --porcelain | sed 's/^ M / /'; }
alias ls="ls --color=auto $@"
alias ll="ls -lah"
# sudo fix for passing alias to sudo
alias sudo="sudo "

# generic commands
alias ..="cd .."
function tree() 
{
echo
if [ "$1" != "" ]  #if parameter exists, use as base folder
   then cd "$1"
      fi
      pwd
      ls -R | grep ":$" |   \
         sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'
# 1st sed: remove colons
# 2nd sed: replace higher level folder names with dashes
# 3rd sed: indent graph three spaces
# 4th sed: replace first dash with a vertical bar
if [ `ls -F -1 | grep "/" | wc -l` = 0 ]   # check if no folders
   then echo "   -> no sub-directories"
      fi
   echo
}
# clear scrollback buffer
alias cls='printf "\033c"'
