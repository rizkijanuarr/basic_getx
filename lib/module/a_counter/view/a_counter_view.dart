import 'package:flutter/material.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class ACounterView extends StatelessWidget {
  const ACounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ACounterController>(
      init: ACounterController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Counter"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Non Observable : ${controller.counter}",
                          style: const TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () => controller.updateCounter(),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Center(
                    child: Column(
                      children: [
                        Obx(() {
                          return Text(
                            "Observable : ${controller.counter2}",
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                          );
                        }),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () => controller.updateCounter2(),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "Controller :",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: CodeTheme(
                      data: CodeThemeData(styles: xt256Theme),
                      child: SingleChildScrollView(
                        child: CodeField(
                          controller: controller.viewCode,
                          gutterStyle: const GutterStyle(
                            showErrors: false,
                            showFoldingHandles: true,
                            showLineNumbers: false,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                  const SizedBox(
                    height: 5.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: CodeTheme(
                      data: CodeThemeData(styles: xt256Theme),
                      child: SingleChildScrollView(
                        child: CodeField(
                          controller: controller.viewCode2,
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
            ),
          ),
        );
      },
    );
  }
}
