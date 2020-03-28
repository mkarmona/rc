run_once("/usr/lib/x86_64-linux-gnu/cinnamon-settings-daemon/csd-xsettings")
run_once("/usr/lib/x86_64-linux-gnu/cinnamon-settings-daemon/csd-power")
run_once("/usr/lib/x86_64-linux-gnu/cinnamon-settings-daemon/csd-screensaver-proxy")
run_once("/usr/lib/x86_64-linux-gnu/cinnamon-settings-daemon/csd-cursor")
run_once("/usr/lib/x86_64-linux-gnu/cinnamon-settings-daemon/csd-mouse")
run_once("nm-applet")
run_once("megasync")
run_once("diodon")
run_once("nitrogen", "--restore")
run_once("redshift-gtk")

run_once("wmname", "LG3D") -- java fix

-- run_once("redshift", "-o -l 0:0 -b 0.5 -t 6500:6500") -- brightness
-- run_once("ibus-daemon", "--xim") -- ibus
-- run_once(os.getenv("HOME") .. "/.dropbox-dist/dropboxd") -- dropbox
-- run_once("sh " .. os.getenv("HOME") .. "/.screenlayout/dual-monitor.sh") -- set screens up
-- run_once("rofi","-key-window F1 -key-run F2 -key-ssh F3") -- start rofi
