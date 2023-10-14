<div align="center">

# xxx

xxx is a C++ library.

![top-language-badge](https://img.shields.io/github/languages/top/ensketch/xxx.svg?style=for-the-badge)
![code-size-badge](https://img.shields.io/github/languages/code-size/ensketch/xxx.svg?style=for-the-badge)
![repo-size-badge](https://img.shields.io/github/repo-size/ensketch/xxx.svg?style=for-the-badge)
[![license-badge](https://img.shields.io/github/license/ensketch/xxx.svg?style=for-the-badge&color=blue)](#copyright-and-license)

![GitHub commit activity](https://img.shields.io/github/commit-activity/y/ensketch/xxx?style=for-the-badge)
![GitHub last commit (by committer)](https://img.shields.io/github/last-commit/ensketch/xxx?style=for-the-badge)
![GitHub tag (with filter)](https://img.shields.io/github/v/tag/ensketch/xxx?style=for-the-badge)

[![cppget.org](https://img.shields.io/website/https/cppget.org/libensketch-xxx.svg?down_message=offline&label=cppget.org&style=for-the-badge&up_color=blue&up_message=online)](https://cppget.org/libensketch-xxx)

</div>

## Requirements and Dependencies

**Operating System:**
- Linux | MacOS | Windows | FreeBSD

**C++ Compiler:**
- GCC | Clang | MinGW | MSVC | Emscripten

**Build System:**
- [`build2`][build2]

<!-- **Automatically handled Dependencies:** -->

<!-- **Manually handled Requirements:** -->

For a thorough list of dependencies and requirements with version constraints and more details, see the [`manifest`][manifest] file of this project.

<!-- ## Introduction -->

## Getting Started
<!-- ## Build, Test, and Install -->

This project is based on [the `build2` toolchain][build2] and to use and test it, you at least need to have the toolchain installed on your system.
First, try to request it from your system's package manager.
For the unlucky case that the package is not officially provided, [The `build2` Installation Manual][build2-install] covers easy instructions for multiple target configurations to build the toolchain from source.
Furthermore, it is recommended but not necessary to get familiar with its [documentation][build2-docs] by starting with [The `build2` Toolchain Introduction][build2-intro] and maybe [The `build2` Build System Manual][build2-build-system].

### Usage in `build2`-Based Projects

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
exe{myexe}: {hxx cxx}{**} $xxx
```

### Installation and Usage in Projects not Based on `build2`

*How to make a `build2` package available on your system for projects that do not use `build2`?*

The following instructions are taken from [The `build2` Toolchain Introduction: Package Consumption][build2-intro-consumption] and have been compressed to the most important steps.
We encourage you to at least read the section of the manual, though, to get to know about more advanced consumption strategies and workflows.
After the installation, use the provided `pkg-config` file to import the library in your project or manually provide the include and library path to the compiler.
[The `build2` toolchain Introduction: Using Unpackaged Dependencies][build2-intro-unpackaged-dependencies] provides more insight even for build strategies not based on `build2`.

1. If you have not already done this, create a suitable build configuration for C/C++-based `build2` projects. You can use this one for all your needed `build2` packages by starting from step `2`.

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

### Development Setup

The main steps to set this repository up for development are taken from [the `build2` documentation][build2-docs] and are provided in compressed form.
It is highly recommended to read through [The `build2` Toolchain Introduction][build2-intro] to get a deeper understanding of how to use `build2` for development.

```
mkdir xxx
cd xxx
git clone --recurse https://github.com/ensketch/xxx.git
cd xxx
bdep init -C @gcc-release cc \
  config.cxx=g++ \
  config.cxx.coptions="-O3 -march=native" \
  config.install.root=../.install \
  config.dist.root=../.dist
b
b clean
b test
b install
b uninstall
b dist: libensketch-xxx
bdep update
bdep test
bdep clean

bdep update @gcc-release
bdep test @gcc-release
bdep clean @gcc-release

bdep update -a
bdep test -a
bdep clean -a
```

## Configuration

This project does not contain any public configuration options.

## Documentation

Currently, all the documentation for this project is part of its `README.md` file.
Long parts of documentation might be factored out in the future.

### Usage, Examples, and Tutorials

Currently, there are no examples and/or tutorials available.

### FAQs and HOWTOs

Currently, there are no FAQs and/or HOWTO entries available.

### API Reference

Currently, there is no API reference documentation available as we are lacking a stable and automatic generation mechanism.
Instead, we encourage you to read through the source files to get a thorough list of available namespaces, classes, functions, and variables.

The source files have been split into interface and implementation units.
In each interface unit, a decent amount of documentation comments explains the behavior and API of functions and classes to the consumer of the library to facilitate comprehension.
In implementation units, only necessary comments are provided to give further insights or point out issues concerning specific implementation strategies.

### Background and Discussions

Currently, there is no background documentation available.
Please see the [GitHub Discussion Page]() for discussions.

## Roadmap

Currently, there is no roadmap available.

## Changelog

Currently, there is no changelog available, because no version has been released so far.

## Contributing

GitHub Issues (Templates)
GitHub Pull Requests (Templates)
Which pull requests will be approved?

Please see [Ensketch's Default Contributing Guidelines][ensketch-contributing].

## Code of Conduct

Please see [Ensketch's Default Code of Conduct][ensketch-code-of-conduct].

## Contact

Please contact us at ensketch@mailbox.org if you have questions or comments about xxx.
If you find bugs or have problems please use our github issue tracking page.

If you’re using xxx in your projects, quickly drop us a note.
Tell us who you are and what you’re using it for.
This helps us apply for funding and justify spending time maintaining this.

## Copyright and License

The copyright for the code is held by the contributors of the code.
The revision history in the version control system is the primary source of authorship information for copyright purposes.
Please see individual source files for appropriate copyright notices.
For more information, see the file [`AUTHORS.md`](AUTHORS.md).

xxx is free software, distributed under the terms of the GNU General
Public License as published by the Free Software Foundation,
version 3 of the License (or any later version).  For more information,
see the [GNU General Public License][GPLv3] or the file [`COPYING.md`](COPYING.md).

xxx is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

Copyright years on xxx source files may be listed using range notation, e.g., 1987-2012, indicating that every year in the range, inclusive, is a copyrightable year that could otherwise be listed individually.

## References and Other Resources

- [Ensketch's Default Contributing Guidelines][ensketch-contributing]
- [Ensketch's Default Code of Conduct][ensketch-code-of-conduct]
- [`build2` | C/C++ Build Toolchain][build2]
<!-- - [`build2` | Installation][build2-install] -->
<!-- - [`build2` | Documentation][build2-docs] -->
<!-- - [The `build2` Toolchain Introduction][build2-intro] -->
<!-- - [The `build2` Build System][build2-build-system] -->
<!-- - [The `build2` Package Manager][build2-package-manager] -->
<!-- - [The `build2` Toolchain Introduction: Package Consumption][build2-intro-consumption] -->
<!-- - [The `build2` Toolchain Introduction: Using Unpackaged Dependencies][build2-intro-unpackaged-dependencies] -->
- [GNU Licenses][GNU-licenses]
<!-- - [GNU General Public License Version 3][GPLv3] -->

[manifest]: libensketch-xxx/manifest (libensketch-xxx build2 Package Manifest)
[ensketch-code-of-conduct]: https://github.com/ensketch/.github/blob/main/CODE_OF_CONDUCT.md (Ensketch's Default Code of Conduct)
[ensketch-contributing]: https://github.com/ensketch/.github/blob/main/CONTRIBUTING.md (Ensketch's Default Contributing Guidelines)

[build2]: https://build2.org (build2 | C/C++ Build Toolchain)
[build2-install]: https://build2.org/install.xhtml (build2 | Installation)
[build2-docs]: https://build2.org/doc.xhtml (build2 | Documentation)
[build2-intro]: https://build2.org/build2-toolchain/doc/build2-toolchain-intro.xhtml (The build2 Toolchain Introduction)
[build2-build-system]: https://build2.org/build2/doc/build2-build-system-manual.xhtml (The build2 Build System)
[build2-package-manager]: https://build2.org/bpkg/doc/build2-package-manager-manual.xhtml (The build2 Package Manager)
[build2-intro-consumption]: https://build2.org/build2-toolchain/doc/build2-toolchain-intro.xhtml#guide-consume-pkg (The build2 Toolchain Introduction: Package Consumption)
[build2-intro-unpackaged-dependencies]: https://build2.org/build2-toolchain/doc/build2-toolchain-intro.xhtml#guide-unpackaged-deps (The build2 Toolchain Introduction: Using Unpackaged Dependencies)
[GNU-licenses]: https://www.gnu.org/licenses/ (GNU Licenses)
[GPLv3]: https://www.gnu.org/licenses/gplv3.html (GNU General Public License Version 3)
