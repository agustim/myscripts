# bluetooth sound


bluedio() {
   index=`pacmd list-cards | grep bluez_card -B1 | grep index | awk '{print $2}'`;pacmd set-card-profile $index off; pacmd set-card-profile $index a2dp_sink

bluetoothctl << EOF
disconnect 16:01:23:21:14:F6
quit
EOF

sleep 5
bluetoothctl << EOF
connect 16:01:23:21:14:F6
quit
EOF

sleep 5

   index=`pacmd list-cards | grep bluez_card -B1 | grep index | awk '{print $2}'`;pacmd set-card-profile $index off; pacmd set-card-profile $index a2dp_sink

}
