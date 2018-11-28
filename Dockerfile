FROM node:10-slim

LABEL version="1.0.0"

LABEL "com.github.actions.name"="GitHub Action to print environment variables"
COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
