import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:someone_datingapp/data/repositories/user_repository/user_repository.dart';
import 'package:someone_datingapp/features/personalization/model/user_model.dart';
import 'package:someone_datingapp/utils/loaders/loaders.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  Future<void> saveUserRecord(UserCredential? userCredentials) async {
    // save user record
    try {
      if (userCredentials != null) {
        // save user record
        final nameParts =
            UserModel.nameParts(userCredentials.user!.displayName ?? '');

        final user = UserModel(
          id: userCredentials.user!.uid,
          name: userCredentials.user!.displayName ?? 'user@someone',
          username: nameParts[0],
          email: userCredentials.user!.email ?? '',
          phoneNumber: '',
          profilePic: userCredentials.user!.photoURL ?? '',
        );

        await UserRepository.instance.saveUserRecord(user);
      }
    } catch (e) {
      SLoader.warningSnackBar(
          title: 'Data not Saved', message: 'something went wrong!');
    }
  }
}