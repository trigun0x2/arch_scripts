if [[ $(pgrep -x expressvpnd) != "" ]] && [[ $(expressvpn status) != "Not connected" ]]; then
  expressvpn status | sed -n 1p;
else
  echo "";
fi
