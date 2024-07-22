
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
find node_modules -type d -name "tests" -exec rm -rf {} +
find node_modules -name "*.spec.js" -type f -delete
find node_modules -name "Readme.md" -type f -delete
find node_modules -name "*.test.js" -type f -delete
find node_modules -name "*.png" -type f -delete
find node_modules -name "*.png" -type f -delete
find node_modules -name "*.eslintrc" -type f -delete
find node_modules -name ".nycrc" -type f -delete
find node_modules -name "*.html" -type f -delete
find node_modules -name ".editorconfig" -type f -delete
find node_modules -name "*.min.js" -type f -delete
find node_modules -name ".npmignore" -type f -delete
find node_modules -name ".DS_Store" -type f -delete
find node_modules -name ".eslintignore" -type f -delete
find node_modules -name "*.cts" -type f -delete
find node_modules -name "*.mjs" -type f -delete
find node_modules -name "*.no_extension" -type f -delete
find node_modules -name "*.md" -type f -delete
find node_modules -name ".gitattributes" -type f -delete
find node_modules -name "*.gif" -type f -delete
find node_modules -name "*.exe" -type f -delete
find node_modules -name "*.txt" -type f -delete

# 返回上一级目录
cd ..

# 拷贝 api 文件夹到目标位置
cp -r ./api ./.amplify-hosting/compute/default
cp -r ./.env.example ./.amplify-hosting/compute/default

# cp -r ./client ./.amplify-hosting/compute/client

cp -r ./client/public ./.amplify-hosting/static
cp -r ./client/dist ./.amplify-hosting/static

cp deploy-manifest.json ./.amplify-hosting/deploy-manifest.json
