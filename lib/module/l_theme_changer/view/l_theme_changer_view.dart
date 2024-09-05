import 'package:flutter/material.dart';
import '../controller/l_theme_changer_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class LThemeChangerView extends StatelessWidget {
  const LThemeChangerView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LThemeChangerController>(
      init: LThemeChangerController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("L Theme Changer"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [],
              ),
            ),
          ),
        );
      },
    );
  }
}
