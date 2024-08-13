import 'package:flutter/material.dart';
import '../controller/e_animation_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class EAnimationView extends StatelessWidget {
  const EAnimationView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EAnimationController>(
      init: EAnimationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Animation"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      const Text(
                        "AnimatedContainer() - width - color",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        height: 100.0,
                        width: controller.isAnimated ? 300 : 100,
                        decoration: BoxDecoration(
                          color:
                              controller.isAnimated ? Colors.red : Colors.blue,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Column(
                    children: [
                      const Text(
                        "AnimatedContainer() - height - color",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        width: 100.0,
                        height: controller.isAnimated ? 150 : 100,
                        decoration: BoxDecoration(
                          color: controller.isAnimated
                              ? Colors.indigoAccent
                              : Colors.brown,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Column(
                    children: [
                      const Text(
                        "AnimatedContainer() - margin - color grad",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        height: 100.0,
                        width: 100.0,
                        margin: EdgeInsets.only(
                          top: controller.isAnimated ? 50 : 0,
                          right: controller.isAnimated ? 50 : 0,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: controller.isAnimated
                                ? [Colors.red, Colors.grey[300]!]
                                : [Colors.grey[300]!, Colors.red],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Column(
                    children: [
                      const Text(
                        "AnimatedRotation() - turns - 180°",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AnimatedRotation(
                        turns: (controller.isAnimated ? 180 : 0),
                        duration: const Duration(milliseconds: 900),
                        child: const CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage(
                            "assets/img/unp.jpg",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "AnimatedContainer() - margin left 80",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 900),
                        height: 70.0,
                        width: 70.0,
                        margin: EdgeInsets.only(
                          left: controller.isAnimated ? 80 : 0,
                        ),
                        child: const CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage(
                            "assets/img/ancit.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "AnimatedContainer() - margin right 80",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 900),
                        height: 70.0,
                        width: 70.0,
                        margin: EdgeInsets.only(
                          right: controller.isAnimated ? 80 : 0,
                        ),
                        child: const CircleAvatar(
                          radius: 40.0,
                          backgroundImage: AssetImage(
                            "assets/img/kikew.jpg",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Column(
                    children: [
                      const Text(
                        "AnimatedScale() - scale zoom 5 : 1",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      AnimatedScale(
                        scale: controller.isAnimated ? 5.0 : 1.0,
                        duration: const Duration(milliseconds: 1800),
                        child: const CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage(
                            "assets/img/ancit.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                              controller: controller.dataController,
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
          // Floating Button
          floatingActionButton: FloatingActionButton(
            backgroundColor: controller.isAnimated ? Colors.green : Colors.red,
            foregroundColor:
                controller.isAnimated ? Colors.white : Colors.black,
            child: Icon(controller.isAnimated ? Icons.check : Icons.cancel),
            onPressed: () => controller.updateAnimatedState(),
          ),
        );
      },
    );
  }
}
