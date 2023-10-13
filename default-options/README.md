<div align="center">

# xxx

xxx is a C++ library.

![top-language-badge](https://img.shields.io/github/languages/top/ensketch/xxx.svg?style=for-the-badge)
![code-size-badge](https://img.shields.io/github/languages/code-size/ensketch/xxx.svg?style=for-the-badge)
![repo-size-badge](https://img.shields.io/github/repo-size/ensketch/xxx.svg?style=for-the-badge)
[![license-badge](https://img.shields.io/github/license/ensketch/xxx.svg?style=for-the-badge&color=blue)](#copyright-and-license)

</div>

## Requirements and Dependencies

## Introduction

## Getting Started

## Build, Test, and Install

This project is based on [the `build2` toolchain][build2] and to use and test it, you at least need to have the toolchain installed on your system.
First, try to request it from your system's package manager.
For the unlucky case that the package is not officially provided, [The `build2` Installation Manual][build2-install] covers easy instructions for multiple target configurations to build the toolchain from source.
Furthermore, it is recommended but not necessary to get familiar with its [documentation][build2-docs] by starting with [The `build2` Toolchain Introduction][build2-intro] and maybe [The `build2` Build System Manual][build2-build-system].

### Usage in build2 Project

1. Add this repository to the `repositories.manifest` of your build2 project.

```
:
role: prerequisite
location: https://github.com/ensketch/xxx.git
```

2. State the package dependency with an [optional version constraint](https://build2.org/bpkg/doc/build2-package-manager-manual.xhtml#package-version-constraint) in the `manifest`s of all build2 packages in your project that shall use this library.

```
depends: libensketch-xxx ^0.1.0
```

3. Import the library in each `buildfile` that contains at least one target that depends on the library and declare it as a dependency.

```
import xxx = libensketch-xxx%lib{ensketch-xxx}
exe{xxx}: {hxx cxx}{**} $xxx
```

### Installation and Package Consumption for Projects not Using build2

How to make a build2 package available on your system for projects that do not use build2?
The following instructions are taken from [The build2 Toolchain Introduction: Package Consumption](https://build2.org/build2-toolchain/doc/build2-toolchain-intro.xhtml#guide-consume-pkg) and have been compressed to the most important steps.
We encourage you to at least read the section of the manual, though, to get to know about more advanced consumption strategies and workflows.
After the installation, use the provided `pkg-config` file to import the library in your project or manually provide the include and library path to the compiler.
[The build2 toolchain Introduction: Using Unpackaged Dependencies](https://build2.org/build2-toolchain/doc/build2-toolchain-intro.xhtml#guide-unpackaged-deps) provides more insight even for build strategies not based on build2.

1. If you have not already done this, create a suitable build configuration for C/C++-based build2 projects. You can use this one for all your needed build2 packages by starting from step `2`.

```
bpkg create -d build2-packages cc \
  config.cxx=g++ \
  config.cc.coptions="-O3 -march=native" \
  config.install.root=/usr/local \
  config.install.sudo=sudo
```

2. Fetch the repository's packages and build them.

```
bpkg build https://github.com/ensketch/xxx.git
```

3. Install the built packages.

```
bpkg install libensketch-xxx
```

4. Optionally, uninstall the built packages when you do not need them any longer.

```
bpkg uninstall libensketch-xxx
```

5. To upgrade the package, fetch all new information and uninstall the older version. Afterwards, build the new version and install it.

```
bpkg fetch
bpkg status

bpkg uninstall libensketch-xxx
bpkg build libensketch-xxx
bpkg install libensketch-xxx
```

## Configuration

## Usage and Examples

## Documentation

## API Reference

Currently, there is no

## Changelog

## Code of Conduct

## Copyright and License

The copyright for the code is held by the contributors of the code.
The revision history in the version control system is the primary source of authorship information for copyright purposes.
Please see individual source files for appropriate copyright notices.
For more information, see the file [`AUTHORS.md`](AUTHORS.md).

xxx is free software, distributed under the terms of the [GNU] General
Public License as published by the Free Software Foundation,
version 3 of the License (or any later version).  For more information,
see [GPL] or the file [`COPYING.md`](COPYING.md).

xxx is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

Copyright years on xxx source files may be listed using range notation, e.g., 1987-2012, indicating that every year in the range, inclusive, is a copyrightable year that could otherwise be listed individually.

## References and Other Resources

- [`build2` | C/C++ Build Toolchain][build2]
- [`build2` | Installation][build2-install]
- [`build2` | Documentation][build2-docs]
- [The `build2` Toolchain Introduction][build2-intro]
- [The `build2` Build System][build2-build-system]
- [GNU Licenses][GPL]

[build2]: https://build2.org (build2 | C/C++ Build Toolchain)
[build2-install]: https://build2.org/install.xhtml (build2 | Installation)
[build2-docs]: https://build2.org/doc.xhtml (build2 | Documentation)
[build2-intro]: https://build2.org/build2-toolchain/doc/build2-toolchain-intro.xhtml (The build2 Toolchain Introduction)
[build2-build-system]: https://build2.org/build2/doc/build2-build-system-manual.xhtml (The build2 Build System)
[GPL]: https://www.gnu.org/licenses/ (GNU Licenses)