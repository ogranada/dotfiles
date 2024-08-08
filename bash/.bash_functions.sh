#!/bin/bash

function confirm(){
  printf "$1 [y/N] "
  read -r  response
  case "$response" in
    [yY][eE][sS]|[yY])
      return 1
      ;;
    *)
      return 0
      ;;
  esac
}

function grst() {
  confirm "Do you like to reset all changes in your repository?"
  if [ "$?" -gt "0" ]; then
    echo "Removing changes..."
    git reset --hard HEAD
  else
    echo "Reset cancelled..."
  fi
}

function current() {
  echo $(git branch | grep "*" | awk '{print $2}')
}

function gpshoc() {
  git push origin $(current)
}

function gpshocf() {
  git push -f origin $(current)
}

function gploc() {
  git pull origin $(current)
}

function gploc() {
  git pull -f origin $(current)
}

function tmx() {
  name="$1";
  # tmux new -s $name; tmux attach -t $name;
  tmux new-session -A -s $name;
}

function rebase() {
  target="$1";
  if [ -z $target ]; then
    echo "Invalid target branch"
  else
    curr="${current}";
    echo "- The current git branch is $curr"
    git checkout $target;
    git pull origin $target;
    gch $curr;
    git rebase -i $target
  fi
}

function clfs() {
  target="$1";
  find $target -name .DS_Store -delete
}

function pssh() {
  eval $(ssh-agent);
  /bin/ls ~/.ssh/id*.pub | awk '
  function basename(file) {
    sub(".*/", "", file)
    split(file,parts,".")
    return parts[1]
  }
  {print basename($0)}' | exec ssh-add
}

# ALIAS
alias gst="git status"
alias gch="git checkout"
alias glog="git log"
alias vim="nvim"
alias docker=podman
