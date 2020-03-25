-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

local awesome = awesome

Debian_menu = {}

Debian_menu["Debian_Aplicaciones_Accesibilidad"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Aplicaciones_Ciencia_Matemáticas"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Dc", "x-terminal-emulator -e ".."/usr/bin/dc"},
	{"sympy (Python3)", "x-terminal-emulator -e ".."python3 /usr/bin/isympy",},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Aplicaciones_Ciencia"] = {
	{ "Matemáticas", Debian_menu["Debian_Aplicaciones_Ciencia_Matemáticas"] },
}
Debian_menu["Debian_Aplicaciones_Consolas"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Csh", "x-terminal-emulator -e ".."/bin/bsd-csh -l"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"fish", "x-terminal-emulator -e ".."/usr/bin/fish"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
}
Debian_menu["Debian_Aplicaciones_Editores"] = {
	{"Joe", "x-terminal-emulator -e ".."/usr/bin/joe"},
	{"Xedit","xedit"},
}
Debian_menu["Debian_Aplicaciones_Emuladores"] = {
	{"VirtualBox","/usr/bin/virtualbox","/usr/share/pixmaps/virtualbox.xpm"},
}
Debian_menu["Debian_Aplicaciones_Emuladores_de_terminal"] = {
	{"X-Terminal as root (GKsu)","/usr/bin/gksu -u root /usr/bin/x-terminal-emulator","/usr/share/pixmaps/gksu-debian.xpm"},
}
Debian_menu["Debian_Aplicaciones_Gestión_de_archivos"] = {
	{"grun","/usr/bin/grun","/usr/share/pixmaps/grun.xpm"},
	{"Nemo","/usr/bin/nemo","/usr/share/pixmaps/nemo.xpm"},
}
Debian_menu["Debian_Aplicaciones_Gráficos"] = {
	{"dotty","/usr/bin/dotty"},
	{"lefty","/usr/bin/lefty"},
	{"ttfautohint GUI","/usr/bin/ttfautohintGUI"},
	{"Waterfall","/usr/bin/waterfall"},
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Aplicaciones_Programación"] = {
	{"BeanShell (text)", "x-terminal-emulator -e ".."/usr/bin/bsh"},
	{"BeanShell (windowed)","/usr/bin/xbsh"},
	{"GDB", "x-terminal-emulator -e ".."/usr/bin/gdb"},
	{"Giggle","/usr/bin/giggle"},
	{"SWI-Prolog", "x-terminal-emulator -e ".."/usr/bin/swipl"},
	{"SWI-Prolog (with XPCE)", "x-terminal-emulator -e ".."/usr/bin/xpce"},
	{"Tclsh8.6", "x-terminal-emulator -e ".."/usr/bin/tclsh8.6"},
	{"TkWish8.6","x-terminal-emulator -e /usr/bin/wish8.6"},
}
Debian_menu["Debian_Aplicaciones_Red_Comunicación"] = {
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet.netkit"},
	{"Xbiff","xbiff"},
}
Debian_menu["Debian_Aplicaciones_Red_Navegación_web"] = {
	{"Lynx", "x-terminal-emulator -e ".."lynx"},
	{"w3m", "x-terminal-emulator -e ".."/usr/bin/w3m /usr/share/doc/w3m/MANUAL.html"},
}
Debian_menu["Debian_Aplicaciones_Red_Transferencias_de_archivos"] = {
	{"Transmission BitTorrent Client (GTK)","/usr/bin/transmission-gtk","/usr/share/pixmaps/transmission.xpm"},
}
Debian_menu["Debian_Aplicaciones_Red"] = {
	{ "Comunicación", Debian_menu["Debian_Aplicaciones_Red_Comunicación"] },
	{ "Navegación web", Debian_menu["Debian_Aplicaciones_Red_Navegación_web"] },
	{ "Transferencias de archivos", Debian_menu["Debian_Aplicaciones_Red_Transferencias_de_archivos"] },
}
Debian_menu["Debian_Aplicaciones_Sistema_Administración"] = {
	{"Debian Task selector", "x-terminal-emulator -e ".."su-to-root -c tasksel"},
	{"Editres","editres"},
	{"Logout (obsession)","/usr/bin/obsession-logout"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Aplicaciones_Sistema_Gestión_de_paquetes"] = {
	{"Aptitude Package Manager (text)", "x-terminal-emulator -e ".."/usr/bin/aptitude-curses"},
	{"Synaptic Package Manager","x-terminal-emulator -e synaptic-pkexec","/usr/share/synaptic/pixmaps/synaptic_32x32.xpm"},
}
Debian_menu["Debian_Aplicaciones_Sistema_Hardware"] = {
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Aplicaciones_Sistema_Monitorización"] = {
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Aplicaciones_Sistema"] = {
	{ "Administración", Debian_menu["Debian_Aplicaciones_Sistema_Administración"] },
	{ "Gestión de paquetes", Debian_menu["Debian_Aplicaciones_Sistema_Gestión_de_paquetes"] },
	{ "Hardware", Debian_menu["Debian_Aplicaciones_Sistema_Hardware"] },
	{ "Monitorización", Debian_menu["Debian_Aplicaciones_Sistema_Monitorización"] },
}
Debian_menu["Debian_Aplicaciones_Texto"] = {
	{"Fortune","sh -c 'while /usr/games/fortune | col -x | xmessage -center -buttons OK:1,Another:0 -default OK -file - ; do :; done'"},
}
Debian_menu["Debian_Aplicaciones_Visores"] = {
	{"Wordview","/usr/bin/wordview"},
	{"Xditview","xditview"},
	{"XLess","xless /usr/share/doc/xless/xless.help"},
}
Debian_menu["Debian_Aplicaciones"] = {
	{ "Accesibilidad", Debian_menu["Debian_Aplicaciones_Accesibilidad"] },
	{ "Ciencia", Debian_menu["Debian_Aplicaciones_Ciencia"] },
	{ "Consolas", Debian_menu["Debian_Aplicaciones_Consolas"] },
	{ "Editores", Debian_menu["Debian_Aplicaciones_Editores"] },
	{ "Emuladores", Debian_menu["Debian_Aplicaciones_Emuladores"] },
	{ "Emuladores de terminal", Debian_menu["Debian_Aplicaciones_Emuladores_de_terminal"] },
	{ "Gestión de archivos", Debian_menu["Debian_Aplicaciones_Gestión_de_archivos"] },
	{ "Gráficos", Debian_menu["Debian_Aplicaciones_Gráficos"] },
	{ "Programación", Debian_menu["Debian_Aplicaciones_Programación"] },
	{ "Red", Debian_menu["Debian_Aplicaciones_Red"] },
	{ "Sistema", Debian_menu["Debian_Aplicaciones_Sistema"] },
	{ "Texto", Debian_menu["Debian_Aplicaciones_Texto"] },
	{ "Visores", Debian_menu["Debian_Aplicaciones_Visores"] },
}
Debian_menu["Debian_Ayuda"] = {
	{"Xman","xman"},
}
Debian_menu["Debian_Gestores_de_ventanas"] = {
	{"awesome",function () awesome.exec("/usr/bin/awesome") end,"/usr/share/pixmaps/awesome.xpm"},
	{"Bspwm",function () awesome.exec("/usr/bin/bspwm") end},
}
Debian_menu["Debian_Juegos_Juguetes"] = {
	{"Oclock","oclock"},
	{"Redshift","redshift-gtk"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Juegos"] = {
	{ "Juguetes", Debian_menu["Debian_Juegos_Juguetes"] },
}
Debian_menu["Debian_Pantalla_Bloqueapantallas"] = {
	{"Lock Screen (XScreenSaver)","/usr/bin/xscreensaver-command -lock"},
}
Debian_menu["Debian_Pantalla_Salvapantallas"] = {
	{"Activate ScreenSaver (Next)","/usr/bin/xscreensaver-command -next"},
	{"Activate ScreenSaver (Previous)","/usr/bin/xscreensaver-command -prev"},
	{"Activate ScreenSaver (Random)","/usr/bin/xscreensaver-command -activate"},
	{"Demo Screen Hacks","/usr/bin/xscreensaver-command -demo"},
	{"Disable XScreenSaver","/usr/bin/xscreensaver-command -exit"},
	{"Enable XScreenSaver","/usr/bin/xscreensaver"},
	{"Reinitialize XScreenSaver","/usr/bin/xscreensaver-command -restart"},
	{"ScreenSaver Preferences","/usr/bin/xscreensaver-command -prefs"},
}
Debian_menu["Debian_Pantalla"] = {
	{ "Bloqueapantallas", Debian_menu["Debian_Pantalla_Bloqueapantallas"] },
	{ "Salvapantallas", Debian_menu["Debian_Pantalla_Salvapantallas"] },
}
Debian_menu["Debian"] = {
	{ "Aplicaciones", Debian_menu["Debian_Aplicaciones"] },
	{ "Ayuda", Debian_menu["Debian_Ayuda"] },
	{ "Gestores de ventanas", Debian_menu["Debian_Gestores_de_ventanas"] },
	{ "Juegos", Debian_menu["Debian_Juegos"] },
	{ "Pantalla", Debian_menu["Debian_Pantalla"] },
}

debian = { menu = { Debian_menu = Debian_menu } }
return debian