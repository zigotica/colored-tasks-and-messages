#!/usr/bin/env bash

if [[ -z $RED ]] || [[ -z $GRN ]] || [[ -z $YEL ]] || [[ -z $BLU ]] || [[ -z $RST ]]; then
  source ./colors.sh
fi

function colored-msg () {
  COL=$1
  MSG=$2

  printf "${!COL}%s${RST}\n" "$MSG"
}
