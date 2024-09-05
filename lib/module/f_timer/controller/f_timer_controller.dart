import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:basic_getx/core.dart';
import 'package:intl/intl.dart';

class FTimerController extends GetxController {
  FTimerView? view;

  late Timer timer;
  String time = "";

  @override
  void onInit() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      time = DateFormat("kk:mm:ss").format(DateTime.now());
      update();
    });

    void onClose() {
      timer.cancel();
      super.onClose();
    }
  }

  // START - TAMPILKAN KODE!
  final String data = '''
  // #1
  late Timer timer;
  String time = "";

  @override
  void onInit() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      time = DateFormat("kk:mm:ss").format(DateTime.now());
      update();
    });

    super.onInit();
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  } // FoldEnd: section1
''';

  final String vieew = '''
  // #2
  Text(
    // FoldStart: section1
    controller.time,
    style: const TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
    ),
  ), // FoldEnd: section1
''';

  late final CodeController datazController;
  late final CodeController vieewController;

  FTimerController() {
    datazController = CodeController(
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
      datazController.foldOutsideSections(['section1']);
      vieewController.foldOutsideSections(['section1']);
    });
  }
}
