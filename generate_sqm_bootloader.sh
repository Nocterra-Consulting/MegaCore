#!/bin/bash

prev=$(pwd)

cd ./avr/bootloaders/optiboot_flash

MCU="atmega2560"
FREQ="8000000L"
UPLOAD_BAUD="250000"
LED_PIN="H5"
UART_NR="0"

echo $(pwd)
make_cmd="make $MCU AVR_FREQ=$FREQ BAUD_RATE=$UPLOAD_BAUD LED=$LED_PIN LED_START_FLASHES=2 UART=$UART_NR"

eval "$make_cmd"

cd "$prev"




