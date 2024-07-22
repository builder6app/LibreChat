#!/bin/bash

rm -rf ./.amplify-hosting

mkdir -p ./.amplify-hosting/compute

# 检查 node_modules 文件夹是否存在，如果存在则删除
if [ -d "node_modules" ]; then
    rm -rf node_modules
fi

# 进入 api 文件夹并安装依赖
cd ./api || exit

if [ -d "node_modules" ]; then
    rm -rf node_modules
fi

npm ci --omit=dev

# 删除 node_modules 下的特定文件类型
find node_modules -name "*.d.ts" -type f -delete
find node_modules -name "*.js.map" -type f -delete
find node_modules -name "*.d.ts.map" -type f -delete
find node_modules -name "*.ts" -type f -delete
find node_modules -name "README.md" -type f -delete
find node_modules -name "readme.md" -type f -delete
find node_modules -name "LICENSE" -type f -delete
find node_modules -name "LICENSE.md" -type f -delete
find node_modules -name "license" -type f -delete
find node_modules -name "HISTORY.md" -type f -delete
find node_modules -name "*.mjs.map" -type f -delete
find node_modules -type d -name "test" -exec rm -rf {} +
find node_modules -type d -name "example" -exec rm -rf {} +
find node_modules -name "History.md" -type f -delete
find node_modules -type d -name "examples" -exec rm -rf {} +
find node_modules -type d -name ".github" -exec rm -rf {} +
find node_modules -name "license.md" -type f -delete
find node_modules -name "tsconfig.json" -type f -delete
find node_modules -name "CHANGELOG.md" -type f -delete
find node_modules -name "*.mts.map" -type f -delete
find node_modules -type d -name ".husky" -exec rm -rf {} +
find node_modules -type d -name "docs" -exec rm -rf {} +

# 返回上一级目录
cd ..

# 拷贝 api 文件夹到目标位置
cp -r ./api ./.amplify-hosting/compute/default
cp -r ./.env.example ./.amplify-hosting/compute/default

# cp -r ./client ./.amplify-hosting/compute/client

cp -r ./client/public ./.amplify-hosting/static
cp -r ./client/dist ./.amplify-hosting/static

cp deploy-manifest.json ./.amplify-hosting/deploy-manifest.json
