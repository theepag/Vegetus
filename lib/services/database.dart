import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
  final CollectionReference userCollection =
      Firestore.instance.collection('users');

  Future updateUserData(
      String name, String email, String phone, String location) async {
    return await userCollection.document(uid).setData(
        {'Name': name, 'Email': email, 'phone': phone, 'location': location});
  }
}
