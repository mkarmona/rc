[get all the configuration](https://unix.stackexchange.com/a/456356) from the gnome terminal profile

```bash
dconf dump /org/gnome/terminal/legacy/profiles:/ > gnome-terminal.profiles
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal.profiles
```

