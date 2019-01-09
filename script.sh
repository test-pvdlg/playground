#!/bin/bash

env

git push --dry-run https://${GITHUB_TOKEN}@github.com/pvdlg/playground.git HEAD:master

cat ${GITHUB_EVENT_PATH}
