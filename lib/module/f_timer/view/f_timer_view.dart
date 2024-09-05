import 'package:flutter/material.dart';
import '../controller/f_timer_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class FTimerView extends StatelessWidget {
  const FTimerView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FTimerController>(
      init: FTimerController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Timer"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    controller.time,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
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
                              controller: controller.datazController,
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
