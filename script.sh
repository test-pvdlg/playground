#!/bin/bash

git push --dry-run https://${GITHUB_TOKEN}@github.com/pvdlg/playground.git HEAD:master
