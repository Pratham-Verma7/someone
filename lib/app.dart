import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:someone_datingapp/features/auth/screens/onboarding/login.dart';
import 'package:someone_datingapp/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const loginScreen(),
    );
  }
}
