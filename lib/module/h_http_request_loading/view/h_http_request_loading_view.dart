import 'package:flutter/material.dart';
import '../controller/h_http_request_loading_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class HHttpRequestLoadingView extends StatelessWidget {
  const HHttpRequestLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HHttpRequestLoadingController>(
      init: HHttpRequestLoadingController(),
      builder: (controller) {
        controller.view = this;

        if (controller.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text("Http Request Loading"),
            actions: [
              IconButton(
                onPressed: () => controller.getUsers(),
                icon: const Icon(
                  Icons.add,
                  size: 24.0,
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            controller: ScrollController(),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "Total users : ${controller.users.length}",
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    controller: ScrollController(),
                    child: ListView.builder(
                      itemCount: controller.users.length,
                      physics:
                          const NeverScrollableScrollPhysics(), // !!!Nonaktifkan scroll ListView
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) {
                        var item = controller.users[index];
                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey[200],
                              backgroundImage: NetworkImage(
                                item["avatar"],
                              ),
                            ),
                            title: Text(item["first_name"]),
                            subtitle: Text(item["email"]),
                          ),
                        );
                      },
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
                              controller: controller.datasController,
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
