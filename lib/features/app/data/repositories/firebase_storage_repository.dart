import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:petevolution/features/app/data/repositories/base_storage_repository.dart';

class FirebaseStorageRepository implements BaseStorageRepository {
  final FirebaseStorage _firebaseStorage;

  FirebaseStorageRepository(this._firebaseStorage);

  @override
  Future<String> uploadFile(String path, File file) async {
    final ref = _firebaseStorage.ref().child('$path/${DateTime.now()}.jpeg');
    final uploadTask = await ref.putFile(file);
    return await uploadTask.ref.getDownloadURL();
  }

  @override
  Future<String> uploadFileBytes(
      String path, String fileName, Uint8List bytes) {
    final ref = _firebaseStorage.ref().child(path).child(fileName);
    final uploadTask = ref.putData(bytes);
    final snapshot = uploadTask.snapshot;
    return snapshot.ref.getDownloadURL();
  }

  @override
  Future<ListResult> listAll(String path) async {
    final ref = _firebaseStorage.ref().child(path);
    final result = await ref.listAll();
    return result;
  }
}
