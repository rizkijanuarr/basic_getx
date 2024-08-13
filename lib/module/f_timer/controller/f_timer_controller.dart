import 'dart:async';

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
  /*
  #TODO!
  1. IMPLEMENT CODE LOGIC AND VIEW MODULE TIMER. OKE?
  2. AND USE CENTER CLOCK WITH STYLING CONSTRAINT_LAYOUT KOTLIN
  */
}
