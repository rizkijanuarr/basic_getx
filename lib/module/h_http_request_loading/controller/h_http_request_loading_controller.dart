import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core.dart';
import '../view/h_http_request_loading_view.dart';

class HHttpRequestLoadingController extends GetxController {
  HHttpRequestLoadingView? view;

  @override
  void onInit() {
    getUsers();
    super.onInit();
  }

  List users = [];
  bool loading = true;
  // var loading = true.obs;
  getUsers() async {
    loading = true;
    // loading.value = true;
    update();
    await Future.delayed(const Duration(seconds: 2));
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    users = obj["data"];
    loading = false;
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

  List users = [];
  bool loading = true;

  getUsers() async {
    loading = true;
    update();
    await Future.delayed(const Duration(seconds: 2));

    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );

    Map obj = response.data;
    users = obj["data"];
    loading = false;
    update();
  } // FoldEnd: section1
''';

  final String vieew = '''
  // #2
  class HHttpRequestLoadingView extends StatelessWidget {
    // FoldStart: section1
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
            body: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "Total users : \${controller.users.length}",
                    style: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.users.length,
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
                  const SizedBox(height: 10.0),
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
                      const SizedBox(height: 10.0),
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
          );
        },
      );
    }
  } // FoldEnd: section1
''';

  late final CodeController datasController;
  late final CodeController vieewController;

  HHttpRequestLoadingController() {
    datasController = CodeController(
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
      datasController.foldOutsideSections(['section1']);
      vieewController.foldOutsideSections(['section1']);
    });
  }
}
