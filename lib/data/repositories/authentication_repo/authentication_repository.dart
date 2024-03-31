import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:someone_datingapp/features/auth/screens/onboarding/login.dart';
import 'package:someone_datingapp/utils/loaders/loaders.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    screenRedirect();
  }

  void screenRedirect() async {
    final User = _auth.currentUser;

    if (User != null) {
      // User is signed in
      Get.offAll(() => SLoader.successSnackBar(
          title: "signd in", message: "User is signed in!"));
    } else {
      deviceStorage.writeIfNull('IsFirstTime', true);

      // check if its first time
      deviceStorage.read('IsFirstTime') != true
          ? Get.offAll(() => const loginScreen())
          : Get.offAll(() => const loginScreen());
    }
  }

/* --------------- federated identity & social sign-in ------------------ */

  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final Credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      return await _auth.signInWithCredential(Credential);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }
}
