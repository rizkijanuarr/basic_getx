import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core.dart';
import '../view/j_checkfield_remote_datasource_view.dart';

class JCheckfieldRemoteDatasourceController extends GetxController {
  JCheckfieldRemoteDatasourceView? view;

  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  List<Map<String, dynamic>> users = [];
  getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    var items = obj["data"];
    for (var item in items) {
      users.add({
        "label": item["first_name"],
        "value": item["id"],
      });
    }
    update();
  }

// START - TAMPILKAN KODE!
  final String data = '''
  // #1
  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  List<Map<String, dynamic>> users = [];
  getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    var items = obj["data"];
    for (var item in items) {
      users.add({
        "label": item["first_name"],
        "value": item["id"],
      });
    }
    update();
  } // FoldEnd: section1
''';

  final String vieew = '''
  // #2
  if (controller.users.isNotEmpty)
    QCheckField(
      label: "Club",
      validator: Validator.atLeastOneitem,
      items: controller.users,
      onChanged: (value, ids) {},
    ), // FoldEnd: section1
''';

  late final CodeController dataccController;
  late final CodeController vieewController;

  JCheckfieldRemoteDatasourceController() {
    dataccController = CodeController(
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
      dataccController.foldOutsideSections(['section1']);
      vieewController.foldOutsideSections(['section1']);
    });
  }
}
