import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';
import 'package:someone_datingapp/data/repositories/user_repository/user_repository.dart';
import 'package:someone_datingapp/features/personalization/controllers/user_controller.dart';
import 'package:someone_datingapp/utils/constants/lottie_Str.dart';
import 'package:someone_datingapp/utils/loaders/loaders.dart';
import 'package:someone_datingapp/utils/network_manager/network_manager.dart';
import 'package:someone_datingapp/utils/popups/full_screen_loader.dart';

class UpdateUsernameController extends GetxController {
  static UpdateUsernameController get instance => Get.find();

  final userName = TextEditingController();
  final _usernameSubject = PublishSubject<String>();

  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());

  GlobalKey<FormState> updateProfileUsernameFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    initializeUserName();
    super.onInit();
  }

  Future<void> initializeUserName() async {
    userName.text = userController.user.value.username;
  }

  Future<void> updateProfileUsername() async {
    try {
      SFullScreenLoader.openLoadingDialog(
          'We are updating your information...', Slottie.loading);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        SFullScreenLoader.stopLoading();
        return;
      }

      if (!updateProfileUsernameFormKey.currentState!.validate()) {
        SFullScreenLoader.stopLoading();
        return;
      }

      Map<String, dynamic> profileName = {
        'username': userName.text.trim(),
      };

      await userRepository.updateSingleUserField(profileName);

      userController.user.update((val) {
        if (val != null) {
          val.fullName = userName.text.trim();
        }
      });

      SFullScreenLoader.stopLoading();

      SLoader.successSnackBar(
          title: 'Name Updated',
          message: 'Your name has been updated successfully');

      Get.close(1);
    } catch (e) {
      SFullScreenLoader.stopLoading();
      SLoader.warningSnackBar(
          title: 'Data not Saved', message: 'something went wrong!');
    }
  }

  UpdateUsernameController() {
    _usernameSubject.stream
        .debounceTime(const Duration(milliseconds: 300))
        .listen((username) async {
      if (!await userRepository.userNameCheck(username)) {
        updateProfileUsernameFormKey.currentState?.validate();
      }
    });
  }

  void onUsernameChanged(String username) {
    _usernameSubject.add(username);
  }

  @override
  void onClose() {
    _usernameSubject.close();
    super.onClose();
  }
}
