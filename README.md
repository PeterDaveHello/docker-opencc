# Dockerized OpenCC

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/PeterDaveHello/docker-opencc)
[![Build Status](https://app.travis-ci.com/PeterDaveHello/docker-opencc.svg?branch=master)](https://app.travis-ci.com/PeterDaveHello/docker-opencc)
[![Docker Hub pulls](https://img.shields.io/docker/pulls/peterdavehello/opencc.svg)](https://hub.docker.com/r/peterdavehello/opencc/)

[![Docker Hub badge](http://dockeri.co/image/peterdavehello/opencc)](https://hub.docker.com/r/peterdavehello/opencc/)

## About OpenCC

A project for conversion between Traditional and Simplified Chinese

- https://github.com/BYVoid/OpenCC

Please note that this Docker image repository is not part of the OpenCC project.

## Usage

Available OpenCC commands are:

- opencc
- opencc_dict
- opencc_phrase_extract

For OpenCC usage, take a look at [its own README.md](https://github.com/BYVoid/OpenCC#usage-%E4%BD%BF%E7%94%A8) and run each command with its `-h` or `--help` parameter to get help message, e.g.

```sh
$ docker run --rm -it peterdavehello/opencc opencc -h

Open Chinese Convert (OpenCC) Command Line Tool
Author: Carbo Kuo <byvoid@byvoid.com>
Bug Report: http://github.com/BYVoid/OpenCC/issues

Usage:

   opencc  [--noflush <bool>] [-i <file>] [-o <file>] [-c <file>] [--]
           [--version] [-h]

Options:

   --noflush <bool>
     Disable flush for every line

   -i <file>,  --input <file>
     Read original text from <file>.

   -o <file>,  --output <file>
     Write converted text to <file>.

   -c <file>,  --config <file>
     Configuration file

   --,  --ignore_rest
     Ignores the rest of the labeled arguments following this flag.

   --version
     Displays version information and exits.

   -h,  --help
     Displays usage information and exits.


   Open Chinese Convert (OpenCC) Command Line Tool
```

You'll need to mount your working directory into the container so that OpenCC can manipulate the file(s) in, for example:

```sh
docker run --rm -it -v ${PWD}:/text -w /text peterdavehello/opencc opencc -c s2tw -i SimplifiedChinese.srt -o TraditionalChinese.srt
```
