This repository contains several useful scripts to help you activate experimental Chrome OS features not exposed in Chrome flags. If you have any requests, spot an issue, or want to contribute, please file a [pull request.](https://github.com/joebobbio/cros-scripts/pulls)

*Disclaimer: your Chromebook must be [in Developer mode to run my scripts.](https://chromium.googlesource.com/chromiumos/docs/+/master/developer_mode.md) Google does not support modifications you make to the system. I am not responsible for hardware, software, or security issues you may run into.*

# Instructions
1. [Download my script here and extract it.](https://github.com/joebobbio/cros-scripts/releases/)
1. Launch crosh by pressing Ctrl-Alt-T.
1. Type and enter `shell` into crosh.
1. Copy and paste `sudo install -Dt /usr/local/bin -m 755 ~/Downloads/[name_of_script].sh` into crosh.

If done correctly, this is what your crosh output should look like.
![output](/assets/Screenshot_2020-10-11_at_11.55.41_PM.png)

# Running the scripts
Once you’ve finished installing the scripts, you can execute them in any crosh shell with `scriptname.sh`
