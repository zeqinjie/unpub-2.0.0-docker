import 'dart:io';
import 'package:path/path.dart' as path;
import 'package_store.dart';

class FileStore extends PackageStore {
  String baseDir;
  String Function(String name, String version)? getFilePath;

  FileStore(this.baseDir, {this.getFilePath});

  File _getTarballFile(String name, String version) {
    final filePath =
        getFilePath?.call(name, version) ?? '$name-$version.tar.gz';
    return File(path.join(baseDir, filePath));
  }

  @override
  Future<void> upload(String name, String version, List<int> content) async {
    var file = _getTarballFile(name, version);
    await file.create(recursive: true);
    await file.writeAsBytes(content);
  }

  @override
  Stream<List<int>> download(String name, String version) {
    return _getTarballFile(name, version).openRead();
  }
}
