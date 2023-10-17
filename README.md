<div align="center">

# build2 Default Options

This repository is used to set up the default configuration of the `build2` toolchain for the development of `ensketch` projetcs and packages.
It offers templates, scripts, and default options files that mainly alter the behavior of the `bdep new` command to create new projects and packages.

![top-language-badge](https://img.shields.io/github/languages/top/ensketch/build2-default-options.svg?style=for-the-badge)
![code-size-badge](https://img.shields.io/github/languages/code-size/ensketch/build2-default-options.svg?style=for-the-badge)
![repo-size-badge](https://img.shields.io/github/repo-size/ensketch/build2-default-options.svg?style=for-the-badge)
[![license-badge](https://img.shields.io/github/license/ensketch/build2-default-options.svg?style=for-the-badge&color=blue)](#copyright-and-license)

![GitHub commit activity](https://img.shields.io/github/commit-activity/y/ensketch/build2-default-options?style=for-the-badge)
![GitHub last commit (by committer)](https://img.shields.io/github/last-commit/ensketch/build2-default-options?style=for-the-badge)
![GitHub tag (with filter)](https://img.shields.io/github/v/tag/ensketch/build2-default-options?style=for-the-badge)

</div>

## Requirements and Dependencies

**Operating System:**
- Linux

**Build Toolchain:**
- [`build2`][build2]

So far, only Linux has been tested.
Presumably, this package works on MacOS and FreeBSD.
Windows might be working, if `bash` is accessible to run the scripts.

## Usage

1. It is strongly advised to establish a dedicated development directory that will serve as the home for all of `ensketch`s project-specific build files. Afterwards, clone the repository into this designated folder.

```
mkdir ensketch && cd ensketch
git clone --recurse https://github.com/ensketch/build2-default-options.git
cd build2-default-options
```

2. To install or uninstall the default options files, scripts, and templates, you must decide whether to employ a temporary or persistent configuration for `config.install.root`. It is advisable to opt for a persistent configuration for a more robust and reliable setup. In this setup, the directory specified by `config.install.root` will contain the `.build2` folder after the installation.

**Temporary Configuration:**

Utilize the `b` command and explicitly define `config.install.root` in conjunction with either the `install` or `uninstall` operations.

```
b install config.install.root=..
b uninstall config.install.root=..
```

**Persistent Configuration:**
  
Begin by establishing a persistent configuration for `config.install.root`.

```
b configure: config.install.root=..
```

Subsequently, proceed with using `b` for the standard `install` and `uninstall` operations.

```
b install
b uninstall
```

## FAQs and HOWTOs

Currently, there are no FAQs and/or HOWTO entries available.

## Background and Discussions

Currently, there are no background documentation or discussions available.

## Roadmap

Currently, there is no roadmap available.

## Changelog

No changelog is currently available as no versions have been released yet.

## Contributing

`build2-default-options` is an open-source project, and we highly appreciate and value contributions from individuals like you.

- If you encounter any bugs or issues, we kindly request that you use our [GitHub issue tracking page][project-issues] to report them.
- If you have innovative ideas or feel that certain capabilities are missing, please don't hesitate to request a new feature.
- Should you discover gaps in the documentation, we encourage you to ask a question or propose enhancements.
- If you aspire to participate in development, consider forking the repository and submitting a pull request with your proposed changes.

Prior to submitting a pull request or contributing, please consult our [contribution guidelines][ensketch-contributing] and [code of conduct][ensketch-code-of-conduct] for comprehensive information.

## Code of Conduct

All contributors are expected to adhere to [our established code of conduct][ensketch-code-of-conduct].

## Contact

If you have any questions or comments regarding `build2-default-options`, please don't hesitate to reach out to us at ensketch@mailbox.org.
If you come across any bugs or encounter issues, we kindly request that you make use of our [GitHub issue tracking page][project-issues].
Additionally, if you are incorporating `build2-default-options` into your projects, we'd greatly appreciate it if you could drop us a brief message.
It would be immensely helpful if you could introduce yourself and provide insights into your use case.
This information plays a crucial role in justifying the time and effort we invest in maintaining this project.

## Copyright and License

The copyright for the code is held by the contributors of the code.
The revision history in the version control system is the primary source of authorship information for copyright purposes.
Please see individual source files for appropriate copyright notices.
For more information, see the file [`AUTHORS.md`](AUTHORS.md).

`build2-default-options` is free software, distributed under the terms of the GNU General
Public License as published by the Free Software Foundation,
version 3 of the License (or any later version).  For more information,
see the [GNU General Public License][GPLv3] or the file [`COPYING.md`](COPYING.md).

`build2-default-options` is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

Copyright years on `build2-default-options` source files may be listed using range notation, e.g., 1987-2012, indicating that every year in the range, inclusive, is a copyrightable year that could otherwise be listed individually.

Copying and distribution of this file, with or without modification, are permitted in any medium without royalty provided the copyright notice and this notice are preserved.
This file is offered as-is, without any warranty.

## References and Other Resources

- [Ensketch's Default Contributing Guidelines][ensketch-contributing]
- [Ensketch's Default Code of Conduct][ensketch-code-of-conduct]

- [`build2` | C/C++ Build Toolchain][build2]
- [bdep-default-options-files](https://build2.org/bdep/doc/bdep-default-options-files.xhtml)
- [bdep-common-options](https://build2.org/bdep/doc/bdep-common-options.xhtml)
- [bdep-new](https://build2.org/bdep/doc/bdep-new.xhtml)

- [GNU Licenses][GNU-licenses]

[project-issues]: https://github.com/ensketch/build2-default-options/issues (Project Issues)

[ensketch-code-of-conduct]: https://github.com/ensketch/.github/blob/main/CODE_OF_CONDUCT.md (Ensketch's Default Code of Conduct)
[ensketch-contributing]: https://github.com/ensketch/.github/blob/main/CONTRIBUTING.md (Ensketch's Default Contributing Guidelines)

[build2]: https://build2.org (build2 | C/C++ Build Toolchain)

[GNU-licenses]: https://www.gnu.org/licenses/ (GNU Licenses)
