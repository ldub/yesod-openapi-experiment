# Yesod OpenAPI Experiment

This repository demonstrates using [OpenAPI Generator](https://github.com/OpenAPITools/openapi-generator) to create a simple Yesod API from an OpenAPI specification.

## Files

- `openapi.json` – Minimal "Hello World" OpenAPI 3 specification exposing a single `/hello` endpoint.
- `generate.sh` – Script that invokes `openapi-generator-cli` to produce the Yesod server code.

## Usage

1. Ensure `openapi-generator-cli` is installed and available on your `PATH`.
   You can install it via Homebrew (`brew install openapi-generator`) or
   download the JAR from the OpenAPI Generator releases.
   Alternatively you can use the provided Docker command inside `generate.sh`.

2. Run the generator script:

   ```bash
   ./generate.sh
   ```

   The generated server will be placed in `generated-server/`.

3. Build the Yesod project inside the generated directory using `stack` or `cabal`.

Refer to the [Haskell Yesod generator documentation](https://github.com/OpenAPITools/openapi-generator/blob/master/docs/generators/haskell-yesod.md) for available options.
