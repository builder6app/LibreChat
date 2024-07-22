安装依赖:
```
npm ci --omit=dev
```

统计文件大小:
```
du -sh node_modules/* | sort -h
```

删除.d.ts文件:
```
find node_modules -name "*.d.ts" -type f -delete
```

删除.js.map文件:
```
find node_modules -name "*.js.map" -type f -delete
```

删除.d.ts.map文件:
```
find node_modules -name "*.d.ts.map" -type f -delete
```

删除.ts:
```
find node_modules -name "*.ts" -type f -delete
```

删除README.md:
```
find node_modules -name "README.md" -type f -delete
```

删除README.md:
```
find node_modules -name "readme.md" -type f -delete
```

删除LICENSE:
```
find node_modules -name "LICENSE" -type f -delete
```

删除LICENSE.md:
```
find node_modules -name "LICENSE.md" -type f -delete
```

删除license:
```
find node_modules -name "license" -type f -delete
```

删除HISTORY.md:
```
find node_modules -name "HISTORY.md" -type f -delete
```

删除mjs.map:
```
find node_modules -name "*.mjs.map" -type f -delete
```

删除test:
```
find node_modules -type d -name "test" -exec rm -rf {} +
```

删除example:
```
find node_modules -type d -name "example" -exec rm -rf {} +
```

删除History.md:
```
find node_modules -name "History.md" -type f -delete
```

删除examples:
```
find node_modules -type d -name "examples" -exec rm -rf {} +
```

删除.github:
```
find node_modules -type d -name ".github" -exec rm -rf {} +
```

删除license.md:
```
find node_modules -name "license.md" -type f -delete
```

删除tsconfig.json:
```
find node_modules -name "tsconfig.json" -type f -delete
```

删除CHANGELOG.md:
```
find node_modules -name "CHANGELOG.md" -type f -delete
```


删除.mts.map:
```
find node_modules -name "*.mts.map" -type f -delete
```

删除.husky:
```
find node_modules -type d -name ".husky" -exec rm -rf {} +
```

删除docs:
```
find node_modules -type d -name "docs" -exec rm -rf {} +
```
