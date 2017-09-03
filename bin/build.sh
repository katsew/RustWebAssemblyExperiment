#! /bin/sh

DEFAULT_EMSDK_ENV_PATH="";

cd `dirname $0`
cd ../

if [ ! `which emcc` ]; then

    echo "emcc not found, sourcing emscripten environment script.";
    if [ -z $1 ]; then
        echo "No arguments specified, use default path";
        source "$DEFAULT_EMSDK_ENV_PATH";
    else
        echo "Argument specified path to the sdk"
        echo "use it: $1";
        soruce $1;
    fi

fi

rustc --target=wasm32-unknown-emscripten src/main.rs -o dist/index.html
