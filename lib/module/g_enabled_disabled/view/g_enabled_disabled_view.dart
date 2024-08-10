import 'package:flutter/material.dart';
import '../controller/g_enabled_disabled_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class GEnabledDisabledView extends StatelessWidget {
  const GEnabledDisabledView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GEnabledDisabledController>(
      init: GEnabledDisabledController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Enabled Disabled"),
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
