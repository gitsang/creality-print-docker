#!/bin/bash

VERSION=v6.3.0

image_name="gitsang/creality-print:${VERSION}"
docker build -f Containerfile -t "${image_name}" .
docker push "${image_name}"
