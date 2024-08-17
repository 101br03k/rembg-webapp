#!/bin/bash
docker compose down
docker image rm ghcr.io/101br03k/rembg:v1.0-pv-3.12.5-slim
docker build . -t ghcr.io/101br03k/rembg:v1.0-pv-3.12.5-slim
docker compose up -d
