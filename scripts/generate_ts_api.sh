#!/bin/sh
SCRIPT_PATH=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
VENDOR_DIR=$SCRIPT_DIR/../vendor

set -e

# fetch current openapi spec
if [ ! -e $VENDOR_DIR/v4.json ]; then
    echo "downloading API spec"
    mkdir -p $VENDOR_DIR
    wget https://dev.bitly.com/v4/v4.json -O $VENDOR_DIR/v4.json
fi

./openapi-generator-cli.sh generate \
    --input-spec $VENDOR_DIR/v4.json \
    --generator-name typescript-fetch \
    --config ../conf/openapi_config.json \
    --output ../src 