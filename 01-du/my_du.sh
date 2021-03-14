#!/bin/bash

full_size=0

calc_size(){
  local current_dir=$1
  for file in $(ls -A $current_dir)
  do
    if [ -d $current_dir/$file ]
    then
      calc_size $current_dir/$file
    else
      for file_size in $(ls -l $current_dir/$file | awk {'print $5'})
      do
        full_size=$(( $full_size + $file_size ))
      done
    fi
  done
}

calc_size $1
echo $(echo $full_size | awk -f human.awk) $(realpath $1)

