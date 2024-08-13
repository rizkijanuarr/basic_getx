import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basic_getx/core.dart';

class EAnimationController extends GetxController {
  EAnimationView? view;

  // #1
  bool isAnimated = false;

  // #2
  updateAnimatedState() {
    isAnimated = !isAnimated;
    update();
  }

  // START - TAMPILKAN KODE!
  final String data = '''
 // #1
 bool isAnimated = false;

 // #2
  updateAnimatedState() { // FoldStart: section1
    isAnimated = !isAnimated;
    update();
  } // FoldEnd: section1
 ''';

  final String vieew = '''
// #3
AnimatedContainer( // FoldStart: section1
  duration: const Duration(milliseconds: 1000),
  height: 100.0,
  width: controller.isAnimated ? 300 : 100,
  decoration: BoxDecoration(
    color: controller.isAnimated ? Colors.red : Colors.blue,
    borderRadius: const BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
), // FoldEnd: section1
''';

  late final CodeController dataController;
  late final CodeController vieewController;

  EAnimationController() {
    dataController = CodeController(
      text: data,
      language: dart,
      namedSectionParser: const BracketsStartEndNamedSectionParser(),
    );

    vieewController = CodeController(
      text: vieew,
      language: dart,
      namedSectionParser: const BracketsStartEndNamedSectionParser(),
    );

    // Fold otomatis
    WidgetsBinding.instance.addPostFrameCallback((_) {
      dataController.foldOutsideSections(['section1']);
      vieewController.foldOutsideSections(['section1']);
    });
  }

  // END - TAMPILKAN KODE!
}
