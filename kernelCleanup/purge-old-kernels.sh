#!/bin/sh
#
# purge-old-kernels.sh
# - a script or set of commands for identifying the current kernel and marking
# old, extra kernels for removal to free up space in /boot

CURRENT_KERNEL="$(uname -r)"

echo "Current kernel: $CURRENT_KERNEL"
echo ""
echo "All kernels:"
echo ""

sudo dpkg -l linux* | grep ^ii | awk '{ print $2 }'

echo ""
echo "Run: $ sudo apt-get remove <linux-headers-...> <linux-headers-...-gerneric> <linux-image-...-generic> <linux-image-extra-...-generic>"
