import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:someone_datingapp/comman/widgets/appbar/appbar.dart';
import 'package:someone_datingapp/features/personalization/controllers/editform_controllers/change_name_controller.dart';
import 'package:someone_datingapp/utils/constants/colors.dart';
import 'package:someone_datingapp/utils/constants/sizes.dart';
import 'package:someone_datingapp/utils/validators/validation.dart';

class changeName extends StatelessWidget {
  const changeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());
    return Scaffold(
      appBar: SAppBar(
        title: Text('Change Name',
            style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(
          children: [
            Text(
                'Please provide your full name. This is how you will be identified on Someone Dating App.',
                style: Theme.of(context).textTheme.labelMedium),
            const SizedBox(height: Sizes.spaceBtwSections),
            Form(
              key: controller.updateProfileNameFormKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: controller.fullName,
                    expands: false,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      hintText: 'Enter your full name',
                    ),
                    validator: (value) =>
                        SValidator.validateEmptyText('Name', value),
                  ),
                ],
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(SColors.primary),
                ),
                onPressed: () => controller.updateProfileName(),
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
