if [[ $(pgrep -x expressvpnd) != "" ]] && [[ $(expressvpn status) != "Not connected." ]]; then
  expressvpn status;
fi
