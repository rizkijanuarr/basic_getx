import 'package:flutter/material.dart';
import '../controller/b_single_selection_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class BSingleSelectionView extends StatelessWidget {
  const BSingleSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BSingleSelectionController>(
      init: BSingleSelectionController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Single Selection"),
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
