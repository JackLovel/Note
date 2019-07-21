### Create package directory
```
$ mkdir mypkg-1.0.0 // directory format: <package_name>-<version>
```
### Minimum required structure for a package
```
mypkg-1.0.0/     # Directory
└── DEBIAN/      # Directory
    └── control  # File
```
> DEBIAN/control content example 
```
Package: mypkg
Version: 1.0.0
Maintainer: Your Name <you@example.com>
Description: My test package, please ignore
Homepage: https://github.com/username/projectname
Architecture: all
Depends: git, python3 (>=3.5)
```
### Build package 
```
$ dpkg -b ./mypkg ./mypkg_1.0.0-0_amd64.deb

$ sudo dpkg -i mypkg.deb // install deb package 
// or
$ sudo apt install -y ./mypkg.deb
```

### Uninstall package 
```
$ sudo apt remove package_name
// or
$ sudo apt purge package_name
```
### Reference
[Debian Package Tutorial (dpkg/.deb)](https://www.devdungeon.com/content/debian-package-tutorial-dpkgdeb)
