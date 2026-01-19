import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muazzinai/onboarding/firstpage.dart';
import 'package:muazzinai/onboarding/fourthpage.dart';
import 'package:muazzinai/onboarding/secondpage.dart';
import 'package:muazzinai/onboarding/thirdpage.dart';


void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fourthpage(),
    );
  }
}
