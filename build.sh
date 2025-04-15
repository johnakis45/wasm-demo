#!/bin/bash

docker build -t wasm-demo .
docker run --rm -v $(pwd):/app wasm-demo
