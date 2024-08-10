import 'package:flutter/material.dart';
import '../controller/l_navigation_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class LNavigationView extends StatelessWidget {
  const LNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LNavigationController>(
      init: LNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Navigation"),
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
