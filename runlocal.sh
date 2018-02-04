#!/bin/bash
set -x

# Local dev convenience script
# uses jq to remove push and post-processors
# Displays the virtualbox UI for easier debugging
jq 'del(.push) | del(.["post-processors"][][1:])' template.json | packer build -var 'headless=false' -only=virtualbox-iso -
