#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="dobermanos"
iso_label="DOBERMAN_$(date +%Y%m)"
iso_publisher="DobermanOS <https://github.com/yllalihajdaraj1-rgb>"
iso_application="DobermanOS Live/Installation CD"
iso_version="1.0"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-ia32.grub.esp' 'uefi-x64.grub.esp' 'uefi-ia32.grub.section' 'uefi-x64.grub.section')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_Guide"]="0:0:755"
  ["/usr/local/bin/livecd-resizepfs"]="0:0:755"
)
