import 'package:flutter/material.dart';
import '../controller/g_enabled_disabled_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class GEnabledDisabledView extends StatelessWidget {
  const GEnabledDisabledView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GEnabledDisabledController>(
      init: GEnabledDisabledController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Enabled Disabled"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  QTextField(
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
                      backgroundColor:
                          controller.isValid ? Colors.blueAccent : Colors.grey,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      if (controller.isValid) {
                        Get.back();
                      }
                    },
                    child: const Text("Save"),
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
                              controller: controller.dataxController,
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
