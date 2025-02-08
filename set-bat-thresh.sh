#!/bin/bash
set -eu
cd $(dirname $0)

echo 80 >/sys/class/power_supply/BAT0/charge_stop_threshold
echo 40 >/sys/class/power_supply/BAT0/charge_start_threshold

capacity=$(echo "scale=6; $(cat /sys/class/power_supply/BAT0/energy_full) / $(cat /sys/class/power_supply/BAT0/energy_full_design) * 100" | bc)

echo "Battery Information:"
echo "  Cycle Count:  $(cat /sys/class/power_supply/BAT0/cycle_count)"
echo "  Capacity:     $capacity%"
