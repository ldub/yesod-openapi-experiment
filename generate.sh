#!/bin/bash
set -euo pipefail

# Path to output directory for generated Yesod server
OUTPUT_DIR="generated-server"

# Ensure openapi-generator-cli is installed
# If using Docker, you can uncomment the docker command below
# docker run --rm -v "$(pwd)":/local openapitools/openapi-generator-cli generate \
#   -i /local/openapi.json -g haskell-yesod -o /local/${OUTPUT_DIR}

# Using locally installed openapi-generator-cli
openapi-generator-cli generate \
  -i openapi.json \
  -g haskell-yesod \
  -o "$OUTPUT_DIR"
