import 'package:basic_getx/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CMultipleSelectionController extends GetxController {
  CMultipleSelectionView? view;

  // #1 - Data Dummy
  List<Map<String, dynamic>> names = [
    {"label": "Aan", "value": "Aan", "selected": false},
    {"label": "Citra", "value": "Citra", "selected": false},
    {"label": "Lestari", "value": "Lestari", "selected": false},
    {"label": "Aziz", "value": "Aziz", "selected": false},
    {"label": "Agung", "value": "Agung", "selected": false},
    {"label": "Nabila", "value": "Nabila", "selected": false},
    {"label": "Tasim", "value": "Tasim", "selected": false},
    {"label": "Adnan", "value": "Adnan", "selected": false},
    {"label": "Haryadi", "value": "Haryadi", "selected": false},
    {
      "label": "Kaleann semua keren!",
      "value": "Kaleann semua keren!",
      "selected": false
    },
    {
      "label": "Good game bro dimanapun berada!",
      "value": "Good game bro dimanapun berada!",
      "selected": false
    }
  ];

  // #2 - Selected
  updateIndex(int newIndex) {
    if (names[newIndex]["selected"] == true) {
      names[newIndex]["selected"] = false;
    } else {
      names[newIndex]["selected"] = true;
    }
    update();
  }

// #3 - Get Data selected == true menjadi list
  List getValues() {
    return names.where((i) => i["selected"] == true).toList();
  }

  // #4 - save data getValues()
  doSave() {
    var selectedValues = getValues();

    // Tampilkan di console
    print("#HALAMAN_MULTIPLE_SELECTION : $selectedValues");

    // Tampilkan di UI melalui dialog
    Get.dialog(
      AlertDialog(
        title: const Text("Result"),
        content: Text(
          selectedValues.isNotEmpty
              ? selectedValues.map((e) => e["label"]).join("\n")
              : "No values selected.",
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

// START - TAMPILKAN KODE!

// #1
  final String data = '''
  // #1 - Data Dummy
  List<Map<String, dynamic>> names = [ // FoldStart: section1
    {"label": "Aan", "value": "Aan", "selected": false},
    {"label": "Citra", "value": "Citra", "selected": false},
    {"label": "Lestari", "value": "Lestari", "selected": false},
    {"label": "Aziz", "value": "Aziz", "selected": false},
    {"label": "Agung", "value": "Agung", "selected": false},
    {"label": "Nabila", "value": "Nabila", "selected": false},
    {"label": "Tasim", "value": "Tasim", "selected": false},
    {"label": "Adnan", "value": "Adnan", "selected": false},
    {"label": "Haryadi", "value": "Haryadi", "selected": false},
    {
      "label": "Kaleann semua keren!",
      "value": "Kaleann semua keren!",
      "selected": false,
    },
    {
      "label": "Good game bro dimanapun berada!",
      "value": "Good game bro dimanapun berada!",
      "selected": false,
    }
  ]; // FoldEnd: section1

  // #2 - Selected
  void updateIndex(int newIndex) { // FoldStart: section1
    names[newIndex]["selected"] = !names[newIndex]["selected"];
    update();
  } // FoldEnd: section1

  // #3 - Get Data selected == true menjadi list
  List getValues() { // FoldStart: section1
    return names.where((i) => i["selected"] == true).toList();
  } // FoldEnd: section1

  // #4 - save data getValues()
  doSave() { // FoldStart: section1
    var selectedValues = getValues();

    // Tampilkan di console
    print("#HALAMAN_MULTIPLE_SELECTION : \$selectedValues");

    // Tampilkan di UI melalui dialog
    Get.dialog(
      AlertDialog(
        title: const Text("Result"),
        content: Text(
          selectedValues.isNotEmpty
              ? selectedValues.map((e) => e["label"]).join("\n")
              : "No values selected.",
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("OK"),
          ),
        ],
      ),
    );
  } // FoldEnd: section1
''';

// #2
  final String vieew = '''
  // #5 - Tampilkan di View-nya, seperti berikut!
  // !!! Oiya, btw disini saya menerapkan pada Sebuah Card Vertical

  ListView.builder( // FoldStart: section1
    itemCount: controller.names.length,
    physics: const NeverScrollableScrollPhysics(), // Nonaktifkan scroll ListView
    shrinkWrap: true, // Buat ListView sesuai dengan konten
    scrollDirection: Axis.vertical,
    padding: EdgeInsets.zero,
    clipBehavior: Clip.none,
    itemBuilder: (context, index) {
      var item = controller.names[index]; // Data
      bool selected = item["selected"] == true; // Jika dipilih
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
  ), // FoldEnd: section1

  // #6 - Button - function doSave()
  SizedBox( // FoldStart: section1
    width: MediaQuery.of(context).size.width,
    height: 40.0,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onPressed: () => controller.doSave(),
      child: const Text("Save"),
    ),
  ), // FoldEnd: section1
''';

  // #3
  late final CodeController dataController;
  late final CodeController vieewController;

  // #4
  CMultipleSelectionController() {
    dataController = CodeController(
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
      dataController.foldOutsideSections(['section1']);
      vieewController.foldOutsideSections(['section1']);
    });
  }
// END - TAMPILKAN KODE!
}
