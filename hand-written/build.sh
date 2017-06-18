#!/bin/sh

asm2wasm add.asm.js > add.s
wasm-as -o add.wasm add.s
