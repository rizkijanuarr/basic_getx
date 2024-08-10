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

        return Scaffold(
          appBar: AppBar(
            title: const Text("Http Request Loading"),
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
