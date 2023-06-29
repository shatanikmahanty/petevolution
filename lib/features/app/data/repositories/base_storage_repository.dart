import 'dart:io';
import 'dart:typed_data';

abstract class BaseStorageRepository {
  Future<String> uploadFile(String path, File file);

  Future<String> uploadFileBytes(String path, String fileName, Uint8List bytes);

  Future listAll(String path);
}
