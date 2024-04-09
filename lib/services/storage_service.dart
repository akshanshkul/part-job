// storage_service.dart

import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String?> uploadResume(String userId, File resumeFile) async {
    try {
      final Reference ref = _storage.ref().child('resumes/$userId/${DateTime.now().millisecondsSinceEpoch}.pdf');
      await ref.putFile(resumeFile);
      return await ref.getDownloadURL();
    } catch (e) {
      print('Failed to upload resume: $e');
      return null;
    }
  }
}
