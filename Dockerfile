FROM alpine:3.22 AS ffmpeg-installer
RUN apk add --update --no-cache ffmpeg

FROM n8nio/n8n:latest
USER root
COPY --from=ffmpeg-installer /usr/bin/ffmpeg /usr/local/bin/ffmpeg
COPY --from=ffmpeg-installer /usr/bin/ffprobe /usr/local/bin/ffprobe
RUN chmod +x /usr/local/bin/ffmpeg /usr/local/bin/ffprobe
USER node
