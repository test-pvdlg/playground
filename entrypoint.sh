#!/bin/sh
set -e

sh -c "env"
sh -c "cat /github/workflow/event.json"
