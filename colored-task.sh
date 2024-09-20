#!/usr/bin/env bash

if [[ -z $RED ]] || [[ -z $GRN ]] || [[ -z $YEL ]] || [[ -z $RST ]]; then
  source ./colors.sh
fi

function colored-task () {
  MSG=$1
  shift
  COMMAND=$@
  if [[ -z $COMMAND ]]; then
    COMMAND=$MSG
  fi

  printf "${YEL}[.] %s${RST}" "$MSG"

  sleep 0.25

  # run command, silent stdout, colorize stderr in red
  eval "$COMMAND" \
    1> /dev/null \
    2> >(while read line; do echo -e "\n${RED}$line${RST}" >&2; done)

  if [[ "$?" == 0 ]]; then
    printf "\r${GRN}[] %s${RST}\n" "$MSG"
  else
    printf "\r${RED}[] %s${RST}\n" "$MSG"
    exit 1
  fi
}
