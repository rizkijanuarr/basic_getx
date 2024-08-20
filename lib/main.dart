import 'package:basic_getx/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const GetMaterialApp(
      title: "rizkijanuarr",
      debugShowCheckedModeBanner: true,
      home: DashboardView(),
    ),
  );
}
