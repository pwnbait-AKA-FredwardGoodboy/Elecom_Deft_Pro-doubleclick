# Elecom_Deft_Pro-doubleclick
This is a bash shell script to automate mapping the button to the left of the trackball on the Elecom Deft Pro mouse to perform a doubleclick action.

This script is for users of Debian-based systems, as it runs commands depending on `apt`.
This script requires superuser permissions via `sudo`.

It will attempt to update the user's `apt` and then install the `xbindkeys xbindkeys-config xdotool` packages.
After this, creates a configuration file at `~/.xbindkeysrc` that maps _Button 10_ (as Linux sees it, not as the Windows configuration utility calls it) to a doubleclick, adjusts permissions for the file, and restarts the xbindkeys service. A reboot should not be required.

I cannot guarantee this will work across multiple systems, and it **WILL NOT** work in COSMIC (Wayland) as used in Pop!_OS 24.04 LTS Beta.

I have tested this in Linux Mint Cinnamon 22.1, Linux Mint Cinnamon & XFCE 22.2, and Pop!_OS 22.04 COSMIC (GNOME).

### To install:
   Download the .sh file from this repository, run `chmod +x [directory]/Elecom_Deft_Pro-doubleclick.sh` on it, then do `sudo [directory]/Elecom_Deft_Pro-doubleclick.sh` replacing `[directory]` with the file location.
