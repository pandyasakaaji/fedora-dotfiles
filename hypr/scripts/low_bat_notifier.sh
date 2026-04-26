#!/bin/bash

# Threshold baterai
THRESHOLD=20
BAT_PATH="/sys/class/power_supply/BAT0"

while true; do
    # Ambil persentase dan status
    BAT_LEVEL=$(cat "$BAT_PATH/capacity")
    BAT_STATUS=$(cat "$BAT_PATH/status")

    if [ "$BAT_LEVEL" -le "$THRESHOLD" ] && [ "$BAT_STATUS" = "Discharging" ]; then
        # -t 30000 = 30 detik
        # -h string:x-canonical... agar notifikasi baru menggantikan yang lama (tidak tumpuk)
        notify-send -u critical -t 30000 \
            "󰂃 $BAT_LEVEL%" \
            "Please plug in your charger."
    fi

    # Tetap ringan di sistem dengan jeda 1 menit
    sleep 60
done
