#!/bin/bash

dbx_name=alpine
dbx_conf=.dbx.ini

echo "[+] dbx"

echo -n "  [-] checking if distrobox is installed..."
command -v distrobox >/dev/null 2>&1 || { echo >&2 "[!] distrobox not installed, aborting."; exit 1; }
echo "ok"

if [[ $1 == 'remove' ]]; then
  echo -n "  [-] removing distrobox: ${dbx_name} checking..."
  dbx_check=$(distrobox list | grep ${dbx_name})
  if [[ $? == 0 ]]; then
    echo "ok"
    echo "y" | distrobox stop ${dbx_name} > /dev/null
    echo "y" | distrobox rm ${dbx_name} > /dev/null
    echo "  [+] distrobox: ${dbx_name} removed"; exit 0
  elif [[ ! $dbx_check ]]; then
    echo "not found, aborting"; exit 1
  fi
fi

echo "  [-] checking for distrobox: ${dbx_name}..."
dbx_check=$(distrobox list | grep ${dbx_name})
if [[ $? != 0 ]]; then
  echo "  [x] distrobox: ${dbx_name} not found, creating..."
  echo "y" | SHELL=/usr/bin/fish distrobox assemble create --file ${dbx_conf}
  echo "  [+] distrobox: ${dbx_name} created"
  echo "  [-] distrobox: ${dbx_name} entering..."
  distrobox enter -n ${dbx_name}
elif [[ $dbx_check ]]; then
  echo "  [-] distrobox: ${dbx_name} found, entering..."
  distrobox enter -n ${dbx_name} 
fi

exit 0

