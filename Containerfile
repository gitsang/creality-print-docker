FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntujammy

RUN \
  apt-get update && \
  apt-get install -y libgtk-3-dev libwebkit2gtk-4.0-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

RUN \
  curl -L -o /usr/local/bin/CrealityPrint https://github.com/CrealityOfficial/CrealityPrint/releases/download/v6.3.0/CrealityPrint_Ubuntu2004-V6.3.0.3420-x86_64-Release.AppImage && \
  chmod +x /usr/local/bin/CrealityPrint

COPY /CrealityPrint /
