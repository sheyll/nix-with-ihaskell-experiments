#!/usr/bin/env bash

set -ex

# https://vaibhavsagar.com/blog/2019/08/11/ihaskell-nix-docker/

docker load < $(nix-build default.nix)
docker run -p8888:8888 -it ihaskell-nix:latest
