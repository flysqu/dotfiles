#!/bin/bash

title="Session Manager"

button_label("Shutdown")="Shut Down"
button_label("Restart")="Restart"
button_label("Logout")="Log Out"
button_label_command("Shutdown")="/usr/bin/systemctl poweroff"
button_label_command("Restart")="/usr/bin/systemctl restart"
button_label_command("Logout")="/usr/bin/systemctl isolate multi-user.target"

dialog --title "$title" --output-format gtk2 --ok-label "$title" --cancel-label "$title" --backtitle "$title" --buttons "Shutdown:${button_label}:${button_label_command};Restart:${button_label}:${button_label_command};Logout:${button_label}:${button_label_command}"

