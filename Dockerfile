# Thin layer on top of upstream image so the Defender DevOps connector
# can correlate the resulting image with this GitHub repo via OCI labels.
# (No local docker pull/push is required; built by ACR Tasks via `az acr build`.)
FROM kaminskypavel/mario:latest

ARG GIT_SHA=unknown
LABEL org.opencontainers.image.source="https://github.com/rkanorg2/supermario-docker" \
      org.opencontainers.image.revision="${GIT_SHA}" \
      org.opencontainers.image.title="supermario" \
      org.opencontainers.image.licenses="MIT"
