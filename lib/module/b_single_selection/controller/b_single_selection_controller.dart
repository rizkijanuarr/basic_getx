import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class BSingleSelectionController extends GetxController {
  BSingleSelectionView? view;

  // #1 - Pertama kita buat datanya dulu yaa!
  List names = [
    "Aan",
    "Citra",
    "Lestari",
    "Aziz",
    "Agung",
    "Nabila",
    "Tasim",
    "Adnan",
    "Haryadi",
    "Kaleann semua keren!",
    "Good game bro dimanapun berada!"
  ];

  // #2 - Kedua kita buat warnanya ketika di select ya!
  int selectedIndex = -1;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    update();
  }

  // START - TAMPILKAN KODE!

  // #1
  final String con = '''
  // #1 - Pertama kita buat datanya dulu yaa!
  List<String> names = [
    "Aan",
    "Citra",
    "Lestari",
    "Aziz",
    "Agung",
    "Nabila",
    "Tasim",
    "Adnan",
    "Haryadi",
    "Kaleann semua keren!",
    "Good game bro dimanapun berada!"
  ];

  // #2 - Kedua kita buat warnanya ketika di select ya!
  int selectedIndex = -1;
  void updateIndex(int newIndex) {
    selectedIndex = newIndex;
    update();
  }
''';

// #2
  final String viu = '''
// #3 - Tampilkan pada View nya!
SingleChildScrollView(
  child: ListView.builder(
    itemCount: controller.names.length,
    // wajib pake ini ya, dibungkus singlechildscrollview() || Jangan pake expanded lagi atau flexible!!!
    physics: const NeverScrollableScrollPhysics(), // !!!Nonaktifkan scroll ListView
    shrinkWrap: true, // !!!Buat ListView sesuai dengan konten
    //
    padding: EdgeInsets.zero,
    clipBehavior: Clip.none,
    itemBuilder: (context, index) {
      var item = controller.names[index]; // data
      bool selected = controller.selectedIndex == index; // selected warna

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
)
''';

  // #3
  late final CodeController conController;
  late final CodeController viuController;

  // #4
  BSingleSelectionController() {
    conController = CodeController(
      text: con,
      language: dart,
      namedSectionParser: const BracketsStartEndNamedSectionParser(),
    );

    viuController = CodeController(
      text: viu,
      language: dart,
      namedSectionParser: const BracketsStartEndNamedSectionParser(),
    );
  }
  // END - TAMPILKAN KODE!
}
