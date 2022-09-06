#/bin/bash

# Server Generator
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g go-server -o servers/go

# Schema
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g protobuf-schema -o schema/protobuf

# Docs
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g html22 -o docs/html2

# Client Generator
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g android -o clients/android
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g dart -o clients/dart
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g go -o clients/go
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g java -o clients/java
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g javascript -o clients/javascript
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g php -o clients/php
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g python -o clients/python
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g ruby -o clients/ruby
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g rust -o clients/rust
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g typescript-angular -o clients/typescript-angular
npx @openapitools/openapi-generator-cli generate -i petstore.yaml -g typescript-node -o clients/typescript-node
