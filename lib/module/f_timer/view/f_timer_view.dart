import 'package:flutter/material.dart';
import '../controller/f_timer_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class FTimerView extends StatelessWidget {
  const FTimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FTimerController>(
      init: FTimerController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Timer"),
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
