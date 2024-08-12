import 'package:basic_getx/core.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:get/get.dart';
import '../view/a_counter_view.dart';
import 'package:highlight/languages/dart.dart';

class ACounterController extends GetxController {
  ACounterView? view;

  // #1 - NON OBSERVABLE
  int counter = 0;
  updateCounter() async {
    counter++;
    update();
  }

  // #2 - OBSERVABLE
  var counter2 = 0.obs;
  updateCounter2() async {
    counter2.value++;
  }

  // START - TAMPILKAN KODE!

  // #1
  final String sampleCode = '''
// #1 - NON OBSERVABLE
  int counter = 10;
  updateCounter() async {
    counter++;
    update();
  }

  // #2 - OBSERVABLE
  var counter2 = 10.obs;
  updateCounter2() async {
    counter2.value++;
  }
''';

// #2
  final String sampleViewCode = '''
#3 - Tampilkan pada View nya!
Center(
  child: Column(
    children: [
      Text(
        "Non Observable : \${controller.counter}",
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
          "Observable : \${controller.counter2}",
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
''';

  // #3
  late final CodeController viewCode;
  late final CodeController viewCode2;

  // #4
  ACounterController() {
    viewCode = CodeController(
      text: sampleCode,
      language: dart,
      namedSectionParser: const BracketsStartEndNamedSectionParser(),
    );

    viewCode2 = CodeController(
      text: sampleViewCode,
      language: dart,
      namedSectionParser: const BracketsStartEndNamedSectionParser(),
    );
  }

  // END - TAMPILKAN KODE!
}
