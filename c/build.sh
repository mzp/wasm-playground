#!/bin/sh

emcc add.c -Os -s WASM=1  -s SIDE_MODULE=1
