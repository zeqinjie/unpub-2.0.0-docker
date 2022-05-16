

## 通过 Docker 部署 
为了方便大家移植部署，这边将 `unpub` 打包成 `docker` 镜像环境

### 安装镜像
首先拉取 GitHub 地址  代码，安装 [docker](https://www.docker.com/get-started/) 环境,  然后在项目根目录下执行下面命令即可

```sh
# install docker and cd docker-compose.yml file 
docker compose up -d 
```

### 安装运行成功如下

安装完成

![图片](https://github.com/zeqinjie/unpub-2.0.0-docker/blob/main/assets/1.png)

通过 docker ps -a 命令查看运行中容器

![图片](https://github.com/zeqinjie/unpub-2.0.0-docker/blob/main/assets/2.png)

![图片](https://github.com/zeqinjie/unpub-2.0.0-docker/blob/main/assets/3.png)

## bytedance Unpub
### Command Line

```sh
pub global activate unpub
unpub --database mongodb://localhost:27017/dart_pub # Replace this with production database uri
```

### Dart API

```dart
import 'package:mongo_dart/mongo_dart.dart';
import 'package:unpub/unpub.dart' as unpub;

main(List<String> args) async {
  final db = Db('mongodb://localhost:27017/dart_pub');
  await db.open(); // make sure the MongoDB connection opened

  final app = unpub.App(
    metaStore: unpub.MongoStore(db),
    packageStore: unpub.FileStore('./unpub-packages'),
  );

  final server = await app.serve('0.0.0.0', 4000);
  print('Serving at http://${server.address.host}:${server.port}');
}
```

### 相关文章
[Flutter搭建私有Pub仓库Docker部署](https://zhengzeqin.netlify.app/2022/05/16/flutter%E6%90%AD%E5%BB%BA%E7%A7%81%E6%9C%89pub%E4%BB%93%E5%BA%93docker%E9%83%A8%E7%BD%B2/)

### 具体了解地址 [unpub](https://github.com/bytedance/unpub)


## License

MIT
