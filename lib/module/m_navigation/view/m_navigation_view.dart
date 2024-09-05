import 'package:flutter/material.dart';
import '../controller/m_navigation_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class MNavigationView extends StatelessWidget {
  const MNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MNavigationController>(
      init: MNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("M Navigation"),
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
