import 'package:alerta_registral/views/login_view.dart';
import 'package:alerta_registral/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alerta Registral',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const LoginView()),
        GetPage(name: '/register', page: () => const RegisterView()),
      ],
      theme: ThemeData(
        primaryColor: HexColor('#004B87'),
        colorScheme: ColorScheme(
          primary: HexColor('#004B87'),
          secondary: Colors.blueAccent,
          brightness: Brightness.light,
          //onBackground: Colors.grey,
          onPrimary: Colors.grey,
          surface: Colors.white,
          onSurface: HexColor('#004B87'),
          error: Colors.red,
          onError: Colors.grey,
          onSecondary: Colors.grey,
          //background: Colors.grey,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: HexColor('#004B87'),
          ),
        ),
      ),
      navigatorKey: Get.key,
    );
  }
}