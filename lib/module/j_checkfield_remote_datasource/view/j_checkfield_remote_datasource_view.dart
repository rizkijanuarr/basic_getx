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
              child: Column(
                children: [
                  if (controller.users.isNotEmpty)
                    QCheckField(
                      label: "Club",
                      validator: Validator.atLeastOneitem,
                      items: controller.users,
                      onChanged: (value, ids) {},
                    ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Controller :",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: CodeTheme(
                          data: CodeThemeData(styles: xt256Theme),
                          child: SingleChildScrollView(
                            child: CodeField(
                              controller: controller.dataccController,
                              gutterStyle: const GutterStyle(
                                showErrors: false,
                                showFoldingHandles: true,
                                showLineNumbers: false,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "View :",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: CodeTheme(
                          data: CodeThemeData(styles: xt256Theme),
                          child: SingleChildScrollView(
                            child: CodeField(
                              controller: controller.vieewController,
                              gutterStyle: const GutterStyle(
                                showErrors: false,
                                showFoldingHandles: true,
                                showLineNumbers: false,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
