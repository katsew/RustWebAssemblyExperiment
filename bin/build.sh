#! /bin/sh

cd `dirname $0`
cd ../

rustc --target=wasm32-unknown-emscripten src/main.rs -o dist/index.html
