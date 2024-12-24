#!/usr/bin/env bash

brids=$(fd 'brid.*bg' ~/Pictures/ | shuf -n 1)

chafa "$brids" --format symbols --symbols vhalf --size 60x17 --stretch
