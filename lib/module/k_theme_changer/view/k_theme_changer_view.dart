import 'package:flutter/material.dart';
import '../controller/k_theme_changer_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class KThemeChangerView extends StatelessWidget {
  const KThemeChangerView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<KThemeChangerController>(
      init: KThemeChangerController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Theme Changer"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: const Column(
                children: [],
              ),
            ),
          ),
        );
      },
    );
  }
}
