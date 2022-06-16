import 'package:antarlaundry/controller/login_controller.dart';
import 'package:antarlaundry/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Antar Laundry App',
      theme: ThemeData(fontFamily: 'TitilliumWeb'),
      home: const SplashScreen(),
    );
  }
}
