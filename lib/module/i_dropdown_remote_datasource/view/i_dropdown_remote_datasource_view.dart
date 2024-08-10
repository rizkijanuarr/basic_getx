import 'package:flutter/material.dart';
import '../controller/i_dropdown_remote_datasource_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class IDropdownRemoteDatasourceView extends StatelessWidget {
  const IDropdownRemoteDatasourceView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IDropdownRemoteDatasourceController>(
      init: IDropdownRemoteDatasourceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Dropdown Remote Datasource"),
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
