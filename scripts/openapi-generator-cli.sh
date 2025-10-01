#!/bin/bash
SCRIPT_PATH=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
VENDOR_DIR=$SCRIPT_DIR/../vendor

# https://github.com/OpenAPITools/openapi-generator/releases
VERSION=7.16.0
SOURCE=https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/${VERSION}/openapi-generator-cli-${VERSION}.jar
FILENAME=$(basename $SOURCE)
mkdir -p $VENDOR_DIR
set -e
if [ ! -f $VENDOR_DIR/$FILENAME ]; then
    echo "Downloading OpenAPI Generator CLI version $VERSION"
    wget $SOURCE -O $VENDOR_DIR/$FILENAME
fi
exec java -jar $VENDOR_DIR/$FILENAME "$@"