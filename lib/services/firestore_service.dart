// firestore_service.dart

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Map<String, dynamic>>> getUserData(String userId) async {
    return await _firestore.collection('users').doc(userId).get();
  }

  Future<void> updateUserData(String userId, Map<String, dynamic> userData) async {
    await _firestore.collection('users').doc(userId).set(userData, SetOptions(merge: true));
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getJobPostings() {
    return _firestore.collection('job_postings').snapshots();
  }
}
