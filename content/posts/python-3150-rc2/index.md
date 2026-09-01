---
title: Python 3.15.0 candidate 2 is here!
publishDate: '2026-09-01'
author: Hugo van Kemenade
description: 'Last chance to test before the big day!'
tags:
  - releases
published: true
---

It's the final 3.15 release candidate!

https://www.python.org/downloads/release/python-3150rc2/

**This is a candidate preview of Python 3.15**

This release, **3.15.0rc2**, is the final planned release candidate, containing around 144 bugfixes, build improvements and documentation changes from 76 contributors since 3.15.0rc1. Entering the release candidate phase, only reviewed code changes which are clear bug fixes are allowed between this release candidate and the final release.

The next release of Python 3.15 will be 3.15.0 final, scheduled for 2026-10-01.

There will be ***no ABI changes*** from this point forward in the 3.15 series, and the goal is that there will be as few code changes as possible.

# Call to action

We ***strongly encourage*** maintainers of third-party Python projects to prepare their projects for 3.15 during this phase, and publish Python 3.15 wheels on PyPI to be ready for the final release of 3.15.0, and to help other projects do their own testing. Any binary wheels built against Python 3.15.0 release candidates ***will work*** with future versions of Python 3.15. As always, report any issues to [the Python bug tracker](https://github.com/python/cpython/issues).

Please keep in mind that this is a preview release and while it's as close to the final release as we can get it, its use is ***not*** recommended for production environments.

## Core team: time to work on documentation now

* Are all your changes properly documented?
* Are they mentioned in [What's New](https://docs.python.org/3.15/whatsnew/3.15.html)?
* Did you notice other changes with insufficient documentation?


## Major new features of the 3.15 series, compared to 3.14

Some of the major new features and changes in Python 3.15 are:

* [PEP 810](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-lazy-imports): Explicit lazy imports for faster startup times
* [PEP 814](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-frozendict): Add `frozendict` built-in type
* [PEP 661](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-sentinel): Add `sentinel` built-in type
* [PEP 799](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-profiling-package): A dedicated profiling package for organizing Python profiling tools
* [PEP 799](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-sampling-profiler): Tachyon: High frequency statistical sampling profiler
* [PEP 831](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-frame-pointers): Frame pointers are enabled by default for improved system-level observability
* [PEP 798](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-unpacking-in-comprehensions): Unpacking in comprehensions
* [PEP 686](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-utf8-default): Python now uses UTF-8 as the default encoding
* [PEP 829](https://peps.python.org/pep-0829/): Package startup configuration files
* [PEP 728](https://peps.python.org/pep-0728/): `TypedDict` with typed extra items
* [PEP 747](https://docs.python.org/3.15/whatsnew/3.15.html#typing): Annotating type forms with `TypeForm`
* [PEP 800](https://peps.python.org/pep-0800/): Disjoint bases in the type system
* [PEP 782](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-pybyteswriter): A new `PyBytesWriter` C API to create a Python bytes object
* [PEP 803, 820, 793](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-abi3t): Stable ABI for free-threaded builds and related C API
* The [JIT compiler](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-jit) has been significantly upgraded, with 8-9% geometric mean performance improvement on x86-64 Linux over the standard interpreter, and 12-13% speedup on AArch64 macOS over the tail-calling interpreter
* The official Windows 64-bit binaries now [use the tail-calling interpreter](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-windows-tail-calling-interpreter)
* The official macOS binaries now install free-threading support by default
* [Improved error messages](https://docs.python.org/3.15/whatsnew/3.15.html#improved-error-messages)
* [More color](https://docs.python.org/3.15/whatsnew/3.15.html#whatsnew315-more-color)
* <small>(Hey, **fellow core team member,** if a feature you find important is missing from this list, let Hugo know.)</small>

For more details on the changes to Python 3.15, see [What’s new in Python 3.15](https://docs.python.org/3.15/whatsnew/3.15.html).


## More resources

* [Online documentation](https://docs.python.org/3.15/)
* [PEP 790](https://peps.python.org/pep-0790/), 3.15 release schedule
* Report bugs at [https://github.com/python/cpython/issues](https://github.com/python/cpython/issues)
* [Help fund Python directly](https://www.python.org/psf/donations/python-dev/) (or via [GitHub Sponsors](https://github.com/sponsors/python)) and support [the Python community](https://www.python.org/psf/donations/)

# And now for something completely different

> “When they reached Circe’s house they found it built of cut stones, on
a site that could be seen from far, in the middle of the forest. There
were wild mountain wolves and lions prowling all round it—poor
bewitched creatures whom she had tamed by her enchantments and drugged
into subjection. They did not attack my men, but wagged their great
tails, fawned upon them, and rubbed their noses lovingly against
them. As hounds crowd round their master when they see him coming
from dinner—for they know he will bring them something—even so did
these wolves and lions with their great claws fawn upon my men, but the
men were terribly frightened at seeing such strange creatures.
>
> “Presently they reached the gates of the goddess’s house, and as they
stood there they could hear Circe within, singing most beautifully as
she worked at her loom, making a web so fine, so soft, and of such
dazzling colours as no one but a goddess could weave. On this Polites,
whom I valued and trusted more than any other of my men, said, ‘There
is some one inside working at a loom and singing most beautifully; the
whole place resounds with it, let us call her and see whether she is
woman or goddess.’”

## Enjoy the new release

Thanks to all of the many volunteers who help make Python development and these releases possible! Please consider supporting our efforts by volunteering yourself or through organisation contributions to the [Python Software Foundation](https://www.python.org/psf-landing/).

Regards from Helsinki, looking forward to Aveiro and [PyCon Portugal](https://2026.pycon.pt/).

Your release team,
<br>Hugo van Kemenade
<br>Ned Deily
<br>Steve Dower
<br>Łukasz Langa
