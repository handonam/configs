# primary working directory
function tl() { echo "Need to setup default directory in your alias"; }

# postgres
#alias psql="psql op cfladmin"
function psq() { psql "$1" cfladmin; }
function op() 
{ 
  if [ "$1" ];
  then
    psql op_"$1" cfladmin;
  else
    psql op cfladmin
  fi
}
# git commands
function gst() { git status "$@"; }
function ga() { git add "$@"; }
function gd() { git diff "$@"; }
function gl() { git log --graph --stat "$@"; }
function gm() { git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d; }
function gitmod()  { git status --porcelain | sed 's/^ M / /'; }

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
