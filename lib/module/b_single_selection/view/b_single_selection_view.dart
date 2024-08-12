import 'package:flutter/material.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class BSingleSelectionView extends StatelessWidget {
  const BSingleSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BSingleSelectionController>(
      init: BSingleSelectionController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Single Selection : ${controller.selectedIndex}"),
          ),
          body: SingleChildScrollView(
            controller: ScrollController(),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // HORIZONTAL SCROLL SINGLE SELECTION
                  SizedBox(
                    height: 60.0,
                    child: ListView.builder(
                      itemCount: controller.names.length,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) {
                        var item = controller.names[index]; // data
                        bool selected =
                            controller.selectedIndex == index; // selected warna
                        return Card(
                          color: selected ? Colors.redAccent : Colors.white,
                          child: SizedBox(
                            width: 100.0,
                            child: ListTile(
                              onTap: () => controller.updateIndex(index),
                              title: Text(
                                potongText(item),
                                style: TextStyle(
                                  color: selected ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // VERTICAL SCROLL SINGLE SELECTION
                  ListView.builder(
                    itemCount: controller.names.length,
                    // wajib pake ini ya, dibungkus singlechildscrollview() || Jangan pake expanded lagi atau flexible!!!
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    //
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      var item = controller.names[index]; // data
                      bool selected =
                          controller.selectedIndex == index; // selected warna
                      return Card(
                        color: selected ? Colors.redAccent : Colors.white,
                        child: ListTile(
                          onTap: () => controller.updateIndex(index),
                          title: Text(
                            item,
                            style: TextStyle(
                              color: selected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
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
                      const SizedBox(
                        height: 5.0,
                      ),
                      CodeTheme(
                        data: CodeThemeData(styles: shadesOfPurpleTheme),
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.horizontal,
                          child: CodeField(
                            controller: controller.conController,
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
                      CodeTheme(
                        data: CodeThemeData(styles: shadesOfPurpleTheme),
                        child: SingleChildScrollView(
                          // scrollDirection: Axis.horizontal,
                          child: CodeField(
                            controller: controller.viuController,
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

  /*
  CUT TEXT "..."
  TODO IMPORT KE TEXTSTYLE LANGSUNG YA!
  EXAMPLE : potongText(item["label"]),
  */
  String potongText(String text, {int maxLength = 5}) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }
}
