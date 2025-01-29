#!/bin/bash

PATH=/usr/local/bin:/opt/homebrew/bin:$PATH

source functions.sh

connect_to_device "TUK by Kanto"
set_audio_output "TUK by Kanto"