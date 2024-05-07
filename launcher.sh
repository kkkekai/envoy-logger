#!/bin/sh
set -e

echo "Installing"
python3 -m pip install -U setuptools --break-system-packages
python3 -m pip install --force-reinstall git+https://github.com/amykyta3/envoy-logger --break-system-packages

echo "Starting logger"
python3 -m envoy_logger $ENVOY_LOGGER_CFG_PATH
