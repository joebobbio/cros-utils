#!/bin/bash

ANS=''
CROSCFG='/etc/chrome_dev.conf'

FLAG='DarkLightMode'
SCRIPT="${0##*/}"

checkrw() {
    if ! sudo mount -i -o remount,rw / 2>/dev/null; then
        echo "Your rootfs is NOT writable, doing that now.."
        echo "sudo /usr/libexec/debugd/helpers/dev_features_rootfs_verification" 1>&2
              sudo /usr/libexec/debugd/helpers/dev_features_rootfs_verification
        rebootit
    else
        echo "Your rootfs IS writable, that's good, continuing.."
    fi
}

rebootit() {
    echo "Rebooting in 5 seconds, wait or press enter to reboot now."
    echo "Or you can press any other key to abort immediately."
    builtin read -n 1 -t 5 -p "Please rerun '${SCRIPT}' after you reboot - " ANS
    
    if [ -z "${ANS}" ]; then
        echo "rebooting NOW."
        echo "sudo reboot"
              sudo reboot
    else
        echo "Reboot ABORTED"
        echo "Please reboot to make change(s) effective at your earliest convenience."
    fi
}

checkflag() {
    if ! grep -q "${FLAG}" ${CROSCFG}; then
        checkrw
        flagit
    else
        echo "The '${FLAG}' flag is already set, no need to continue."
    fi
}

flagit() {
    echo "Enabling light mode flag.."
    echo "--enable-features=${FLAG}" | sudo tee -a ${CROSCFG}
    echo "Done!"
    echo "Restarting.."
    sudo restart ui
}

checkflag

exit 0
