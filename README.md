# Waybar Wiregaard toggle

==========================

# What this is

---

A small Waybar custom module for showing VPN status. The repo contains the
module files (script and assets) you can drop into your Waybar config directory
and use as a custom module.

# Quick usage

---

1. Place the module files under your Waybar config, e.g. "left",
   "modules-middle", or "modules-right" depending on where you want it to
   appear.

2. Paste the following module config block into your
   ~/.config/waybar/config.jsonc (inside the top-level object). Use your own
   path where you saved the scripts.

```bash
"custom/vpn": {
    "format": "{icon}",
    "format-icons": {
      "default": "",
      "none": "󰻌",
      "connected": "",
      "disconnected": "",
    },
    "interval": 3,
    "return-type": "json",
    "exec": "/home/x/Repositories/waybar-wireguard-toggle/nm-status.sh",
    "on-click": "/home/x/Repositories/waybar-wireguard-toggle/nm-toggle.sh",
    "signal": 8,
  },
```

# Notes

---

- Ensure the script is executable: chmod +x (your files)
- After editing config.jsonc restart Waybar to apply changes. (killall -SIGUSR2
  waybar)
