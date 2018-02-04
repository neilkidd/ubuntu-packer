# ubuntu-packer
[![MIT License](https://img.shields.io/github/license/twbs/bootlint.svg)](https://github.com/twbs/bootlint/blob/master/LICENSE)

## Aim
Creation of a minimal cloud hosted Vagrant box.

Regular rebuilds to stay up to date and secure.

See the [issues](https://github.com/neilkidd/ubuntu-packer/issues) for outstanding tasks.

## Motivation
- To provide the basis of a common **daily driver** development environment.
- A minimal box to allow varying software provisioners to be run over the top.
- UK GB locale and keyboard out of the box. Scratching my itch.
- Provide a windowed environment.

## Requirements
- packer
- virtualbox
- jq

## Local development
To execute locally, avoiding post-processors and push run:
```
$ jq 'del(.push) | del(.["post-processors"][][1:])' template.json | packer build -only=virtualbox-iso -
```

## Thanks
Inspiration, code and kudos to / for the following:
- [uchida/packer-ubuntu](https://github.com/uchida/packer-ubuntu) - provided the initial code
