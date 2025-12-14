FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy

RUN \
  curl -fsSL -o /usr/local/bin/CrealityPrint https://github.com/CrealityOfficial/CrealityPrint/releases/download/v6.3.0/CrealityPrint_Ubuntu2404-V6.3.0.3420-x86_64-Release.AppImage && \
  chmod +x /usr/local/bin/CrealityPrint

COPY /CrealityPrint /
