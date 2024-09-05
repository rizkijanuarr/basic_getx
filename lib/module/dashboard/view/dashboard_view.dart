import 'package:flutter/material.dart';
import '../controller/dashboard_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

import '../widget/dashboard_menu.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return Theme(
          data: ThemeData().copyWith(
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey[300],
              toolbarHeight: 80.0,
              elevation: 0.0,
              titleTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                  "Mengenal lebih dekat dengan Get X\nWrite less do more!🚀\nIkatlah ilmu dengan menulis - (Ali Bin Abi Thalib)"),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: const Column(
                  children: [
                    DashboardMenu(),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "2024 | rizkijanuar.com",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
