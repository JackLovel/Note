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

### Reference
[Debian Package Tutorial (dpkg/.deb)](https://www.devdungeon.com/content/debian-package-tutorial-dpkgdeb)
