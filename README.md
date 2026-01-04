# ArchLinux-ISO
Creates a custom and updated arch iso with GNOME live desktop

## Prebuild ISOs
Feel free to get Prebuild ISOs on SourceForge

[![Download ArchLinux Live ISO Prebuild](https://a.fsdn.com/con/app/sf-download-button)](https://sourceforge.net/projects/archlinux-live-iso-prebuild/files/latest/download)

[![Download ArchLinux Live ISO Prebuild](https://img.shields.io/sourceforge/dt/archlinux-live-iso-prebuild.svg)](https://sourceforge.net/projects/archlinux-live-iso-prebuild/files/latest/download)



## Build The ISO

CAUTION: This Script will reinstall the ArchIso Package. Make sure to backup your ArchIso Data, if you are working with them

Edit this Variables to get the scripts work on your mashine:
* LOCALPATH
* LOCALUSER

### Get Execution Privileges
```bash
chmod +x create-arch-iso.sh
chmod +x create-local-aur-repo.sh
chmod +x rm_repo_of_aur.sh
```


**TIPP: You my need to install missing dependencies using *sudo pacman -S <packagename>*.**


### Run the Creation Script as Root
```
./create-arch-iso.sh --minimal
```
or
```
./create-arch-iso.sh --big
```

## Testing
To Test, if all BASIC Packages are available to get installed on the ISO, use this script:
```
sudo ./test-packages-valid.sh
```
If the Progress Lines appear, use CTRL+C to quit the Test. All Packages should be available at this stage.

## Note
I will update this iso build over time to work for future isos.

Feel free to add Issues, if you get errors or if you found bugs.
