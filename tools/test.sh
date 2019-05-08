#!/usr/bin/env bash
CTR_FC_ROOT_DIR=2
get_win32abspath(){
  if [[ -x "$(command -v cygpath)" ]]; then
    cygpath -w `pwd`
  else
    pwd | sed 's|/|\\|g'
  fi
}

print_abspath(){
  get_win32abspath
}

echo `get_win32abspath | sed 's/.*/\L&/'`

