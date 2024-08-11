import 'package:basic_getx/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  // SETUP RUNNING WINDOWS
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  await windowManager.setSize(const Size(340.0, 640.0));

  windowManager.setAlwaysOnTop(true); // ALWAYS TOP

  runApp(
    const GetMaterialApp(
      title: "rizkijanuarr",
      debugShowCheckedModeBanner: true,
      home: DashboardView(),
    ),
  );
}
