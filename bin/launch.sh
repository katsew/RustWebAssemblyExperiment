#! /bin/sh

cd `dirname $0`
cd ../dist

echo "Launging server with python, exit via Ctrl+C"
python -m SimpleHTTPServer 9090
