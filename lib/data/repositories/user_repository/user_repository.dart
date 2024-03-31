import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:someone_datingapp/features/personalization/model/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    // save user record
    try {
      await _firestore.collection('users').doc(user.id).set(user.toJson());
    } catch (e) {
      throw 'Data not Saved';
    }
  }
}
