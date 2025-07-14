#!/bin/bash

NEWX=$(ls -Art /tmp/resonances_x_*.csv | tail -n 1)
DATE=$(date +'%Y-%m-%d-%H%M%S')
if [ ! -d "/home/cereal/printer_data/config/input_shaper" ]
then
    mkdir /home/cereal/printer_data/config/input_shaper
    chown cereal:cereal /home/cereal/printer_data/config/input_shaper
fi

~/klippy-env/bin/python ~/klipper/scripts/calibrate_shaper.py $NEWX -o /home/cereal/printer_data/config/input_shaper/resonances_x_$DATE.png
