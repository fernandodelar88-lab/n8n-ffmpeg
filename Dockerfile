FROM n8nio/n8n:1.121.3-alpine
USER root
RUN apk add --update --no-cache ffmpeg
USER node
