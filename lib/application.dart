import 'package:e_commerce_application/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/authentication/screens/on_boarding/widgets/onBoarding.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: TappTheme.lightTheme,
      darkTheme: TappTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
