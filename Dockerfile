FROM node:10-slim

LABEL version="1.0.0"

LABEL "com.github.actions.name"="GitHub Action to print environment variables"

RUN apt-get update && apt-get install -y --no-install-recommends git

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
