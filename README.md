# Introduction
Hello! You're probably here because you want to enable experimental features in Google's Chrome OS, but don't really know how to go about enabling them, or just want a quick and easy way to enable them. If you have anything new you want to see added/want to contribute, [open a pull request.](https://github.com/joebobbio/useful-scripts/pulls) If you spot a bug, or encounter an issue, [open an issue.](https://github.com/joebobbio/useful-scripts/issues)

# Prerequisites
The scripts in the `flags` folder require [Developer Mode](https://chromium.googlesource.com/chromiumos/docs/+/master/developer_mode.md) and [rootfs verification to be disabled.](https://chromium.googlesource.com/chromiumos/docs/+/master/developer_mode.md#disable-verity)
**Note that disabling rootfs verification can result in** ***severe data loss and potential system software damage if you make the wrong move!*** **Proceed at your own risk!**

# Installing the scripts
To ensure compatibility, you should install the scripts to your `/usr/local/bin` folder. This can be easily done with this command, `sudo install -Dt /usr/local/bin -m 755 ~/Downloads/scriptname.sh`
**Replace "scriptname" with the name of the script you are trying to install!**
The command will have no output if it executes successfully.

# Running the scripts
Once you've installed the scripts, you can then execute them with `scriptname.sh`. Once you do that, answer prompt(s) (if any) like a good person. Enjoy the new features!
