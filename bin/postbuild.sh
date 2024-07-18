#!/bin/bash

rm -rf ./.amplify-hosting

mkdir -p ./.amplify-hosting/compute

cp -r ./api ./.amplify-hosting/compute/default
cp -r ./client ./.amplify-hosting/compute/client
cp -r ./node_modules ./.amplify-hosting/compute/node_modules

cp -r ./client/public ./.amplify-hosting/static
cp -r ./client/dist ./.amplify-hosting/static

cp deploy-manifest.json ./.amplify-hosting/deploy-manifest.json