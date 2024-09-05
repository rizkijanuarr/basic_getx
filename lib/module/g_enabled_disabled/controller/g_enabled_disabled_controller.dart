import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core.dart';
import '../view/g_enabled_disabled_view.dart';

class GEnabledDisabledController extends GetxController {
  GEnabledDisabledView? view;

  String email = "";
  String password = "";
  updateState() {
    update();
  }

  bool get isValid {
    return email.isNotEmpty && password.isNotEmpty;
  }

  // START - TAMPILKAN KODE!
  final String data = '''
  // #1
  String email = "";
  String password = "";

  updateState() {
    update();
  }

  bool get isValid {
    return email.isNotEmpty && password.isNotEmpty;
  } // FoldEnd: section1
''';

  final String vieew = '''
  // #2
  QTextField(
    // FoldStart: section1
    label: "Email",
    validator: Validator.email,
    suffixIcon: Icons.email,
    value: null,
    onChanged: (value) {
      controller.email = value;
      controller.update();
    },
  ),
  QTextField(
    label: "Password",
    obscure: true,
    validator: Validator.required,
    suffixIcon: Icons.password,
    value: null,
    onChanged: (value) {
      controller.password = value;
      controller.update();
    },
  ),
  const Divider(),
  ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: controller.isValid ? Colors.blueAccent : Colors.grey,
      foregroundColor: Colors.white,
    ),
    onPressed: () {
      if (controller.isValid) {
        Get.back();
      }
    },
    child: const Text("Save"),
  ), // FoldEnd: section1
''';

  late final CodeController dataxController;
  late final CodeController vieewController;

  GEnabledDisabledController() {
    dataxController = CodeController(
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
      dataxController.foldOutsideSections(['section1']);
      vieewController.foldOutsideSections(['section1']);
    });
  }
}
