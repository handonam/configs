# git commands
function gst
  git status $argv;
end

funcsave gst


function ga
  git add $argv;
end

funcsave ga


function gd
  git diff $argv;
end

funcsave gd


function gl
  git log --graph --stat $argv;
end

funcsave gl


function gm
  git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d;
end

funcsave gm


function gitmod
  git status --porcelain | sed 's/^ M / /';
end

funcsave gitmod
