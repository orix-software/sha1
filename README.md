[![Build Status](https://travis-ci.org/orix-software/sha1.svg?branch=master)](https://travis-ci.org/orix-software/sha1)

cc65sha1
========

SHA1 command line utility for 6502 based computers.

Tested to work with Atari 8bit (800XL / 130XE) using SpartaDos and SpartaDOS X (SDX). 
Not tested but should work with MyDOS.
Not tested but should work with other 6502 based computers like:
  VIC20
  Apple IIe
  Apple ][+
  Commodor 64
  Commodor 128
  Telestrat

Usage: SHA1 <command> [options]

Commands:
 -s        Generate SHA1 hash
 -t        Run all tests
 -v        Display version info
 -h        Display help info
 
Options:
 -i <file> Input file, defaults to STDIN
 -o <file> Output file, defaults to STDOUT
 -q        Quiet mode, defaulted to off
 
Program returns 0 if succesful and 1 if failed.

SHA1 "c" functions original written by Christophe Devine and modified by Mark Hoblit to compile under cc65.

Bitcoin donations: 17uKHtsQegbvFpHwMKySVS558m6ZzaVLLk
