#!/bin/bash
docker compose down
docker image rm rembg-webapp-rembg:latest
docker compose up -d
