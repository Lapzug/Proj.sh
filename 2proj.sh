#!/bin/bash

roll_die() {
  local sides=$1
  echo $(( RANDOM % sides + 1 ))
}

roll_multiple_dice() {
  local sides=$1
  local rolls=$2

  for ((i = 1; i <= rolls; i++)); do
    result=$(roll_die $sides)
    echo "Roll $i: $result"
  done
}

read -p "Enter number of sides: " sides
read -p "Enter number of rolls: " rolls

roll_multiple_dice "$sides" "$rolls"

