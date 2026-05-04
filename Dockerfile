FROM ghcr.io/n8n-io/n8n:latest
USER root
RUN apk add --update --no-cache ffmpeg
USER node
