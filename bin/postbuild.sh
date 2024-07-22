#!/bin/bash

rm -rf ./.amplify-hosting

mkdir -p ./.amplify-hosting/compute

# 进入 api 文件夹并安装依赖
cd ./api || exit
npm ci --omit=dev

# 删除 node_modules 下的特定文件类型
find node_modules -name "*.d.ts" -type f -delete
find node_modules -name "*.js.map" -type f -delete
find node_modules -name "*.d.ts.map" -type f -delete
find node_modules -name "*.ts" -type f -delete

# 返回上一级目录
cd ..

# 拷贝 api 文件夹到目标位置
cp -r ./api ./.amplify-hosting/compute/default
cp -r ./client ./.amplify-hosting/compute/client

cp -r ./client/public ./.amplify-hosting/static
cp -r ./client/dist ./.amplify-hosting/static

cp deploy-manifest.json ./.amplify-hosting/deploy-manifest.json
