---
title: Python 3.15.0 candidate 1 is here!
publishDate: '2026-08-04'
author: Hugo van Kemenade
description: 'Get those wheels rolling!'
tags:
  - releases
published: true
---

It's the first 3.15 release candidate!

https://www.python.org/downloads/release/python-3150rc1/

**This is a candidate preview of Python 3.15**

This release, **3.15.0rc1**, is the first of two planned candidate releases. Entering the release candidate phase, only reviewed code changes which are clear bug fixes are allowed between this release candidate and the final release.

The next release of Python 3.15 will be 3.15.0rc2, scheduled for 2026-09-01.

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

> Eurynome brought the seat at once and set a fleece upon it, and as soon
as Ulysses had sat down Penelope began by saying, “Stranger, I shall
first ask you who and whence are you? Tell me of your town and
parents.”
>
> “Madam,” answered Ulysses, “who on the face of the whole earth can dare
to chide with you? Your fame reaches the firmament of heaven itself;
you are like some blameless king, who upholds righteousness, as the
monarch over a great and valiant nation: the earth yields its wheat and
barley, the trees are loaded with fruit, the ewes bring forth lambs,
and the sea abounds with fish by reason of his virtues, and his people
do good deeds under him. Nevertheless, as I sit here in your house, ask
me some other question and do not seek to know my race and family, or
you will recall memories that will yet more increase my sorrow. I am
full of heaviness, but I ought not to sit weeping and wailing in
another person’s house, nor is it well to be thus grieving continually.
I shall have one of the servants or even yourself complaining of me,
and saying that my eyes swim with tears because I am heavy with wine.”

## Enjoy the new release

Thanks to all of the many volunteers who help make Python development and these releases possible! Please consider supporting our efforts by volunteering yourself or through organisation contributions to the [Python Software Foundation](https://www.python.org/psf-landing/).

Regards from Helsinki as the days shorten to under 17 hours,

Your release team,
<br>Hugo van Kemenade
<br>Ned Deily
<br>Steve Dower
<br>Łukasz Langa
