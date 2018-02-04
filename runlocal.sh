#!/bin/bash
set -x

# Local dev convenience script
# uses jq to remove push and last post-processor
# Displays the virtualbox UI for easier debugging See: https://www.packer.io/docs/templates/user-variables.html
jq 'del(.push) | del(.["post-processors"][][1:])' template.json | packer build -var 'headless=false' -only=virtualbox-iso -
