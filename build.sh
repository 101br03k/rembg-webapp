#!/bin/bash
docker compose down
docker image rm ghcr.io/101br03k/rembg:v1.1-pv-3.12.7-slim
docker build . -t ghcr.io/101br03k/rembg:v1.1-pv-3.12.7-slim
docker compose up -d
