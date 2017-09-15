#!/usr/bin/env bash

PS3='Choose a file: '

select file in $(ls $(pwd)); do
  echo $file && break
done
