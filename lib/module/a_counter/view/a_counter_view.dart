import 'package:flutter/material.dart';
import '../controller/a_counter_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class ACounterView extends StatelessWidget {
  const ACounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ACounterController>(
      init: ACounterController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Counter"),
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
