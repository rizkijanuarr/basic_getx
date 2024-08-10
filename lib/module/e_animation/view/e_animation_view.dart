import 'package:flutter/material.dart';
import '../controller/e_animation_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class EAnimationView extends StatelessWidget {
  const EAnimationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EAnimationController>(
      init: EAnimationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Animation"),
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
