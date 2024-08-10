import 'package:flutter/material.dart';
import '../controller/j_checkfield_remote_datasource_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class JCheckfieldRemoteDatasourceView extends StatelessWidget {
  const JCheckfieldRemoteDatasourceView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JCheckfieldRemoteDatasourceController>(
      init: JCheckfieldRemoteDatasourceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Checkfield Remote Datasource"),
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
