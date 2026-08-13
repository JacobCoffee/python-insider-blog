---
title: 'Python 3.12.14, 3.11.16 and 3.10.21 are now available!'
publishDate: '2026-08-12'
author: Thomas Wouters
description: '[Python Releases Eclipse Your Security!](https://discuss.python.org/t/python-3-12-14-3-11-16-and-3-10-21-are-now-available/108537) New security releases for 3.10, 3.11 and 3.12 are now available.'
tags:
  - releases
published: true
---

# [Python Releases Eclipse Your Security!](https://discuss.python.org/t/python-3-12-14-3-11-16-and-3-10-21-are-now-available/108537)

New security releases for 3.10, 3.11 and 3.12 are now available. (As these Python versions are now in security-fix-only mode, these are source-only releases, and there is no pre-set release cadence... but the solar eclipse here in Europe was as good an excuse as any.)

## Security content in these releases

* [gh-143930](https://github.com/python/cpython/issues/143930): Reject leading dashes in URLs passed to [`webbrowser.open()`](https://docs.python.org/release/3.12.14/library/webbrowser.html#webbrowser.open).
* [gh-137586](https://github.com/python/cpython/issues/137586): Invoke **osascript** with absolute path in [`webbrowser`](https://docs.python.org/release/3.12.14/library/webbrowser.html#module-webbrowser) and `turtledemo`.
* [gh-141707](https://github.com/python/cpython/issues/141707): Don’t change [`tarfile.TarInfo`](https://docs.python.org/release/3.12.14/library/tarfile.html#tarfile.TarInfo) type from `AREGTYPE` to `DIRTYPE` when parsing GNU long name or link headers.
* [gh-146211](https://github.com/python/cpython/issues/146211): Reject CR/LF characters in tunnel request headers for the HTTPConnection.set\_tunnel() method.
* [gh-149486](https://github.com/python/cpython/issues/149486): [`tarfile.data_filter()`](https://docs.python.org/release/3.12.14/library/tarfile.html#tarfile.data_filter) now validates link targets using the same normalised value that is written to disk, strips trailing separators from the member name when resolving a symlink’s directory, and rejects link members that would replace the destination directory itself. This closes several path-traversal bypasses of the `data` extraction filter.
* [gh-87451](https://github.com/python/cpython/issues/87451): The [`ftplib`](https://docs.python.org/release/3.12.14/library/ftplib.html#module-ftplib) module’s undocumented `ftpcp` function no longer trusts the IPv4 address value returned from the source server in response to the `PASV` command by default, completing the fix for CVE-2021-4189. As with [`ftplib.FTP`](https://docs.python.org/release/3.12.14/library/ftplib.html#ftplib.FTP), the former behavior can be re-enabled by setting the `trust_server_pasv_ipv4_address` attribute on the source `ftplib.FTP` instance to `True`. Thanks to Qi Deng at Aurascape AI for the report.
* [gh-145506](https://github.com/python/cpython/issues/145506): Fixes [**CVE 2026-2297**](https://www.cve.org/CVERecord?id=CVE-2026-2297) by ensuring that `SourcelessFileLoader` uses [`io.open_code()`](https://docs.python.org/release/3.12.14/library/io.html#io.open_code) when opening `.pyc` files.  
* [gh-144370](https://github.com/python/cpython/issues/144370): Disallow usage of control characters in status in [`wsgiref.handlers`](https://docs.python.org/release/3.12.14/library/wsgiref.html#module-wsgiref.handlers) to prevent HTTP header injections. Patch by Benedikt Johannes.
* [gh-145986](https://github.com/python/cpython/issues/145986): [`xml.parsers.expat`](https://docs.python.org/release/3.12.14/library/pyexpat.html#module-xml.parsers.expat): Fixed a crash caused by unbounded C recursion when converting deeply nested XML content models with [`ElementDeclHandler()`](https://docs.python.org/release/3.12.14/library pyexpat.html#xml.parsers.expat.xmlparser.ElementDeclHandler). This addresses [**CVE 2026-4224**](https://www.cve.org/CVERecord?id=CVE-2026-4224).
* [gh-145599](https://github.com/python/cpython/issues/145599): Reject control characters in [`http.cookies.Morsel`](https://docs.python.org/release/3.12.14/library/http.cookies.html#http.cookies.Morsel) [`update()`](https://docs.python.org/release/3.12.14/library/http.cookies.html#http.cookies.Morsel.update) and [`js_output()`](https://docs.python.org/release/3.12.14/library/http.cookies.html#http.cookies.BaseCookie.js_output). This addresses [**CVE 2026-3644**](https://www.cve.org/CVERecord?id=CVE-2026-3644).
* [gh-148395](https://github.com/python/cpython/issues/148395): Fix a dangling input pointer in [`lzma.LZMADecompressor`](https://docs.python.org/release/3.12.14/library/lzma.html#lzma.LZMADecompressor), [`bz2.BZ2Decompressor`](https://docs.python.org/release/3.12.14/library/bz2.html#bz2.BZ2Decompressor), and internal `zlib._ZlibDecompressor` when memory allocation fails with [`MemoryError`](https://docs.python.org/release/3.12.14/library/exceptions.html#MemoryError), which could let a subsequent `decompress()` call read or write through a stale pointer to the already-released caller buffer.  
* [gh-148169](https://github.com/python/cpython/issues/148169): A bypass in [`webbrowser`](https://docs.python.org/release/3.12.14/library/webbrowser.html#module-webbrowser) allowed URLs prefixed with `%action` to pass the dash-prefix safety check.
* [gh-148808](https://github.com/python/cpython/issues/148808): Added buffer boundary check when using `nbytes` parameter with `asyncio.AbstractEventLoop.sock_recvfrom_into()`. Only relevant for Windows and the [`asyncio.ProactorEventLoop`](https://docs.python.org/release/3.12.14/library/asyncio-eventloop.html#asyncio.ProactorEventLoop).
* [gh-146581](https://github.com/python/cpython/issues/146581): Fix vulnerability in [`shutil.unpack_archive()`](https://docs.python.org/release/3.12.14/library/shutil.html#shutil.unpack_archive) for ZIP files on Windows which allowed to write files outside of the destination tree if the patch in the archive contains a Windows drive prefix. Now such invalid paths will be skipped. Files containing “..” in the name (like “foo..bar”) are no longer skipped.
* [gh-149079](https://github.com/python/cpython/issues/149079): Fix a potential denial of service in [`unicodedata.normalize()`](https://docs.python.org/release/3.12.14/library/unicodedata.html#unicodedata.normalize). The canonical ordering step of Unicode normalization used a quadratic-time insertion sort for reordering combining characters, which could be exploited with crafted input containing many combining characters in non-canonical order. Replaced with a linear-time counting sort for long runs.
* [gh-150599](https://github.com/python/cpython/issues/150599): Fix a possible stack buffer overflow in [`bz2`](https://docs.python.org/release/3.12.14/library/bz2.html#module-bz2) when a [`bz2.BZ2Decompressor`](https://docs.python.org/release/3.12.14/library/bz2.html#bz2.BZ2Decompressor) is reused after a decompression error. The decompressor now becomes unusable after libbz2 reports an error.
* [gh-90949](https://github.com/python/cpython/issues/90949): Add [`SetBillionLaughsAttackProtectionActivationThreshold()`](https://docs.python.org/release/3.12.14/library/pyexpat.html#xml.parsers.expat.xmlparser.SetBillionLaughsAttackProtectionActivationThreshold) and [`SetBillionLaughsAttackProtectionMaximumAmplification()`](https://docs.python.org/release/3.12.14/library/pyexpat.html#xml.parsers.expat.xmlparser.SetBillionLaughsAttackProtectionMaximumAmplification) to [xmlparser](https://docs.python.org/release/3.12.14/library/pyexpat.html#xmlparser-objects) objects to tune protections against [billion laughs](https://en.wikipedia.org/wiki/Billion_laughs_attack) attacks. Patch by Bénédikt Tran.
* [gh-151544](https://github.com/python/cpython/issues/151544): `Modules/Setup.local` is no longer used as a landmark to discover whether Python is running in a source tree, as it could potentially affect actual installs. The `pybuilddir.txt` file is now the sole indicator of running in a source tree.
* [gh-151981](https://github.com/python/cpython/issues/151981): In [`tarfile`](https://docs.python.org/release/3.12.14/library/tarfile.html#module-tarfile), seeking a stream now stops when end of the stream is reached.
* [gh-151558](https://github.com/python/cpython/issues/151558): Fixed an vulnerability in the [`tarfile`](https://docs.python.org/release/3.12.14/library/tarfile.html#module-tarfile) `data` and `tar` extraction filters where crafted archives could create a symlink pointing outside the destination directory. This was a bypass of [**CVE 2025-4330**](https://www.cve.org/CVERecord?id=CVE-2025-4330).  
* [gh-143927](https://github.com/python/cpython/issues/143927): Normalize all line endings (CR, CRLF, and LF) to LF+TAB when writing multi-line configparser values.
* [gh-150743](https://github.com/python/cpython/issues/150743): [`http.client`](https://docs.python.org/release/3.12.14/library/http.client.html#module-http.client) now limits the number of chunked-response trailer lines it will read to 100, and the number of interim (1xx) responses it will skip to 100\. A malicious or broken server could previously stream trailer lines or `100 Continue` responses forever, hanging the client even when a socket timeout was in use. Reported by `@YLChen-007` via GHSA-w4q2-g22w-6fr4.
* [gh-151987](https://github.com/python/cpython/issues/151987): The [`tarfile.TarFile.extract()`](https://docs.python.org/release/3.12.14/library/tarfile.html#tarfile.TarFile.extract) method now applies the given filter when it extracts a link target from the archive as a fallback.
* [gh-153030](https://github.com/python/cpython/issues/153030): Fixed quadratic complexity in incremental parsing of long unterminated constructs (such as tags or comments) in [`html.parser.HTMLParser`](https://docs.python.org/release/3.12.14/library/html.parser.html#html.parser.HTMLParser), which could be exploited for a denial of service.
* [gh-146333](https://github.com/python/cpython/issues/146333): Fix quadratic backtracking in [`configparser.RawConfigParser`](https://docs.python.org/release/3.12.14/library/configparser.html#configparser.RawConfigParser) option parsing regexes (`OPTCRE` and `OPTCRE_NV`). A crafted configuration line with many whitespace characters could cause excessive CPU usage.
* [gh-149231](https://github.com/python/cpython/issues/149231): In [`tomllib`](https://docs.python.org/release/3.12.14/library/tomllib.html#module-tomllib), the number of parts in TOML keys is now limited.
* [gh-152674](https://github.com/python/cpython/issues/152674): The [`xml.etree.ElementTree.Element`](https://docs.python.org/release/3.12.14/library/xml.etree.elementtree.html#xml.etree.ElementTree.Element) methods [`findall()`](https://docs.python.org/release/3.12.14/library/xml.etree.elementtree.html#xml.etree.ElementTree.Element.findall), [`iterfind()`](https://docs.python.org/release/3.12.14/library/xml.etree.elementtree.html#xml.etree.ElementTree.Element.iterfind) and [`find()`](https://docs.python.org/release/3.12.14/library/xml.etree.elementtree.html#xml.etree.ElementTree.Element.find) avoid quadratic behavior when using XPath index predicates (`[1]`, `[last()]`, `[last()-N]`) on XML documents with many same-tag siblings.
* [gh-109638](https://github.com/python/cpython/issues/109638): Fix exponential time in [`csv.Sniffer.sniff()`](https://docs.python.org/release/3.12.14/library/csv.html#csv.Sniffer.sniff) for a sample which contains many quote characters. A doubled quote character is now also detected in a field which contains the delimiter or a line break.
* [gh-98820](https://github.com/python/cpython/issues/98820): Fix quadratic time in [`csv.Sniffer.sniff()`](https://docs.python.org/release/3.12.14/library/csv.html#csv.Sniffer.sniff) for a sample which contains quoted fields, in particular for a single column of quoted fields.
* [gh-149018](https://github.com/python/cpython/issues/149018): Improved protection against XML hash-flooding attacks in [`xml.parsers.expat`](https://docs.python.org/release/3.12.14/library/pyexpat.html#module-xml.parsers.expat) and [`xml.etree.ElementTree`](https://docs.python.org/release/3.12.14/library/xml.etree.elementtree.html#module-xml.etree.ElementTree) when Python is compiled with libExpat 2.8.0 or later.
* [gh-146083](https://github.com/python/cpython/issues/146083), [gh-149017](https://github.com/python/cpython/issues/149017), [gh-149698](https://github.com/python/cpython/issues/149698), [gh-152216](https://github.com/python/cpython/issues/152216): Update bundled [libexpat](https://libexpat.github.io/) to version 2.8.2.

# Python 3.12.14

Additional fixes in this release:
* [gh-139808](https://github.com/python/cpython/issues/139808): Add branch protections for AArch64 (BTI/PAC) in assembly code used by [`-X perf_jit`](https://docs.python.org/release/3.12.14/using/cmdline.html#cmdoption-X) (Linux perf profiler integration).
* [gh-155558](https://github.com/python/cpython/issues/155558): Update bundled [libexpat](https://libexpat.github.io/) to version 2.8.3.
* [gh-149018](https://github.com/python/cpython/issues/149018): Improved protection against XML hash-flooding attacks in [`xml.parsers.expat`](https://docs.python.org/release/3.12.14/library/pyexpat.html#module-xml.parsers.expat) and [`xml.etree.ElementTree`](https://docs.python.org/release/3.12.14/library/xml.etree.elementtree.html#module-xml.etree.ElementTree) when Python is compiled with libExpat 2.8.0 or later.

https://www.python.org/downloads/release/python-31214/

# Python 3.11.16

Additional fixes in this release:
* [gh-100372](https://github.com/python/cpython/issues/100372): [`ssl.SSLContext.load_verify_locations`](https://docs.python.org/release/3.11.16/library/ssl.html#ssl.SSLContext.load_verify_locations) no longer incorrectly accepts some cases of trailing data when parsing DER.
* [gh-155558](https://github.com/python/cpython/issues/155558): Update bundled [libexpat](https://libexpat.github.io/) to version 2.8.3.
* [gh-149018](https://github.com/python/cpython/issues/149018): Improved protection against XML hash-flooding attacks in [`xml.parsers.expat`](https://docs.python.org/release/3.12.14/library/pyexpat.html#module-xml.parsers.expat) and [`xml.etree.ElementTree`](https://docs.python.org/release/3.12.14/library/xml.etree.elementtree.html#module-xml.etree.ElementTree) when Python is compiled with libExpat 2.8.0 or later.

https://www.python.org/downloads/release/python-31116/

# Python 3.10.21

Additional fixes in this release:
* [gh-100372](https://github.com/python/cpython/issues/100372): [`ssl.SSLContext.load_verify_locations`](https://docs.python.org/release/3.10.21/library/ssl.html#ssl.SSLContext.load_verify_locations) no longer incorrectly accepts some cases of trailing data when parsing DER.

https://www.python.org/downloads/release/python-31021/

## Stay safe and upgrade!

As always, upgrading is highly recommended to all users of affected versions.

## Enjoy the new releases

Thanks to all of the many volunteers who help make Python Development and this release possible! Please consider supporting our efforts by volunteering yourself or through organisation contributions to the [Python Software Foundation](https://www.python.org/psf-landing/).

Regards from your sunny release team,
Thomas Wouters
Pablo Galindo Salgado
