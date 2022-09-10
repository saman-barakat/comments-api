#/bin/bash

# Server Generator
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g go-server -o servers/go

# Schema
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g protobuf-schema -o schema/protobuf

# Docs
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g html2 -o docs/html2

# Client Generator
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g android -o clients/android
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g dart -o clients/dart
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g go -o clients/go
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g java -o clients/java
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g javascript -o clients/javascript
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g php -o clients/php
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g python -o clients/python
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g ruby -o clients/ruby
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g rust -o clients/rust
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g typescript-angular -o clients/typescript-angular
npx @openapitools/openapi-generator-cli generate -i comments-schema.yaml -g typescript-node -o clients/typescript-node
