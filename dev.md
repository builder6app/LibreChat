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