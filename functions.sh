function connect_to_device() {
  DEVICE_NAME=$1
  DEVICE_ADDRESS=$(blueutil --paired --format json | jq -r '.[] | select(.name == "'"$DEVICE_NAME"'") | .address')

  if [ -z "$DEVICE_ADDRESS" ]; then
    echo "Device $DEVICE_NAME not found. Exiting."
    exit 1
  fi

  blueutil --wait-connect $DEVICE_ADDRESS 10

  if [ $? -eq 0 ]; then
    echo "connected to $DEVICE_NAME"
  else
    echo "failed to connect to $DEVICE_NAME"
    exit 1
  fi

  return $?
}

function disconnect_from_device() {
  DEVICE_NAME=$1
  blueutil --disconnect $DEVICE_NAME
}

function set_audio_output() {
  DEVICE_NAME=$1
  SwitchAudioSource -t output -i $(SwitchAudioSource -a -f json -t output | grep "$DEVICE_NAME" | jq -r .id)
}

function set_audio_input() {
  DEVICE_NAME=$1
  SwitchAudioSource -t input -i $(SwitchAudioSource -a -f json -t input | grep "$DEVICE_NAME" | jq -r .id)
}
