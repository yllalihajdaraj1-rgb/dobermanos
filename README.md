# ArchLinux-ISO
Creates a custom and updated arch iso with GNOME live desktop

## Prebuild ISOs
Feel free to get Prebuild ISOs on SourceForge

[![Download ArchLinux Live ISO Prebuild](https://a.fsdn.com/con/app/sf-download-button)](https://sourceforge.net/projects/archlinux-live-iso-prebuild/files/latest/download)

[![Download ArchLinux Live ISO Prebuild](https://img.shields.io/sourceforge/dt/archlinux-live-iso-prebuild.svg)](https://sourceforge.net/projects/archlinux-live-iso-prebuild/files/latest/download)



## Build The ISO Steps
Clone This Repo and *cd* into it.

```bash
ln -s /usr/lib/systemd/system/gpm.service archlive/airootfs/etc/systemd/system/multi-user.target.wants/
ln -s /usr/lib/systemd/system/gdm.service archlive/airootfs/etc/systemd/system/display-manager.service
ln -s /usr/lib/systemd/system/NetworkManager.service archlive/airootfs/etc/systemd/system/NetworkManager.service;


sudo mkarchiso -v -r -w /tmp/archiso-tmp -o ./Build archlive  
```


## Test the ISO
```bash
run_archiso -i /path/to/archlinux-yyyy.mm.dd-x86_64.iso
```