import 'package:flutter/material.dart';
import '../controller/c_multiple_selection_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class CMultipleSelectionView extends StatelessWidget {
  const CMultipleSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CMultipleSelectionController>(
      init: CMultipleSelectionController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Multiple Selection"),
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
