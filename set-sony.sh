#!/bin/bash

PATH=/usr/local/bin:/opt/homebrew/bin:$PATH

source functions.sh

connect_to_device "WH-1000XM5"
set_audio_output "WH-1000XM5"
