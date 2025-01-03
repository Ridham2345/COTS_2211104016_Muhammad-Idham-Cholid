import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_cots_2211104016/design_system/login/login_screen.dart';
import 'design_system/boarding/board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design System with GetX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/boarding', // Rute awal diatur ke BoardingScreen
      getPages: [
        GetPage(name: '/login', page: () => MyLoginscreen()),
        GetPage(
            name: '/boarding',
            page: () => MyBoard()), // Tambahkan rute BoardingScreen
      ],
    );
  }
}
