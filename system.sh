lock_screen(){
 dbus-send --type=method_call --dest=org.gnome.ScreenSaver \
    /org/gnome/ScreenSaver org.gnome.ScreenSaver.Lock
}

unlock_screen(){
  export DISPLAY=:0; 
  dbus-send --session --dest=org.gnome.ScreenSaver --type=method_call --print-reply --reply-timeout=20000 /org/gnome/ScreenSaver org.gnome.ScreenSaver.SetActive boolean:false
}
