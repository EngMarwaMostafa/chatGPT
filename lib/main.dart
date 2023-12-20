
import 'package:chatgpt_task/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
           initialRoute: AppPages.initial,
    getPages: AppPages.routes,
      title: 'Flutter Demo',
     // home: GetAnswerView()
    );
  }
}

