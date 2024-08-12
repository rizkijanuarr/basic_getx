import 'package:flutter/material.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class CMultipleSelectionView extends StatelessWidget {
  const CMultipleSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CMultipleSelectionController>(
      init: CMultipleSelectionController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Multiple Selection"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Text(
                    "Button Multiple Select",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ListView.builder(
                    itemCount: controller.names.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      var item = controller.names[index];
                      bool selected = item["selected"] == true;
                      return Container(
                        height: 42,
                        margin: const EdgeInsets.only(
                          bottom: 12.0,
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                selected ? Colors.blueAccent : Colors.grey,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onPressed: () => controller.updateIndex(index),
                          child: Text(item["label"]),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Divider(),
                  const Text(
                    "Checkbox Multiple Select",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ListView.builder(
                    itemCount: controller.names.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      var item = controller.names[index];
                      bool selected = item["selected"] == true;
                      return Row(
                        children: [
                          Checkbox(
                            value: item["selected"],
                            activeColor:
                                selected ? Colors.green : Colors.transparent,
                            onChanged: (bool? value) {
                              controller.updateIndex(index);
                            },
                          ),
                          Text(item["label"]),
                        ],
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Divider(),
                  const Text(
                    "Choice Chip Multiple Select",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ListView.builder(
                    itemCount: controller.names.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      var item = controller.names[index];
                      bool selected = item["selected"] == true;
                      return Container(
                        margin: const EdgeInsets.only(
                          bottom: 12.0,
                        ),
                        child: ChoiceChip(
                          onSelected: (bool selected) =>
                              controller.updateIndex(index),
                          label: Text(
                            item["label"],
                            style: TextStyle(
                              color: selected ? Colors.white : Colors.black,
                            ),
                          ),
                          selected: selected,
                          selectedColor:
                              selected ? Colors.redAccent : Colors.transparent,
                          checkmarkColor:
                              selected ? Colors.white : Colors.transparent,
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Divider(),
                  Text(
                    potongText("Card Horizontal MultipleSelect"),
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 60.0,
                    child: ListView.builder(
                      itemCount: controller.names.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      clipBehavior: Clip.none,
                      itemBuilder: (context, index) {
                        var item = controller.names[index];
                        bool selected = item["selected"] == true;
                        return Card(
                          color: selected ? Colors.black : Colors.white,
                          child: SizedBox(
                            width: 100.0,
                            child: ListTile(
                              onTap: () => controller.updateIndex(index),
                              title: Text(
                                potongText(item["label"]),
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
                  const Divider(),
                  Text(
                    potongText("Card Vertical MultipleSelect"),
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ListView.builder(
                    itemCount: controller.names.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      var item = controller.names[index];
                      bool selected = item["selected"] == true;
                      return Card(
                        color: selected ? Colors.indigoAccent : Colors.white,
                        child: ListTile(
                          onTap: () => controller.updateIndex(index),
                          title: Text(
                            item["label"],
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
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      onPressed: () => controller.doSave(),
                      child: const Text("Save"),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Divider(),
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
                            controller: controller.dataController,
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
                            controller: controller.vieewController,
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
  String potongText(String text, {int maxLength = 24}) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  String potongText2(String text, {int maxLength = 5}) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }
}
