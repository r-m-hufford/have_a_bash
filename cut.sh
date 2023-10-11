#!/bin/bash

if [ "$#" -eq 0 ]; then
  echo "no args provided"
else
  result=$(echo "$1" | cut -c-4)
  echo "args: $result"
fi