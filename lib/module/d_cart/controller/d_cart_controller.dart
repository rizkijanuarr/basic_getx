import 'package:basic_getx/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DCartController extends GetxController {
  DCartView? view;

  // #1
  List<Map<String, dynamic>> products = [
    {
      "id": 1,
      "photo":
          "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045560/mq2o8cqtmvaobrnil7xi.png",
      "product_name": "Frenzy Pizza",
      "price": 25,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 20,
      "is_favorite": false,
    },
    {
      "id": 2,
      "photo":
          "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045565/cvx59ia4kvqj2ratfkjs.png",
      "product_name": "Beef Burger",
      "price": 22,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 18,
      "is_favorite": true,
    },
    {
      "id": 3,
      "photo":
          "https://images.unsplash.com/photo-1625869016774-3a92be2ae2cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "product_name": "Seperait",
      "price": 33,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 28,
      "is_favorite": false,
    },
    {
      "id": 4,
      "photo":
          "https://images.unsplash.com/photo-1578160112054-954a67602b88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
      "product_name": "Fried Rice",
      "price": 31,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 25,
      "is_favorite": true,
    },
    {
      "id": 5,
      "photo":
          "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045569/cpiafx7w5euet8dctcho.png",
      "product_name": "Terrano Milk",
      "price": 32,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 28,
      "is_favorite": true,
    },
  ];

  // #3
  increaseQty(Map item) {
    item["qty"]++;
    update();
  }

  // #4
  decreaseQty(Map item) {
    item["qty"]--;
    update();
  }

  // START - TAMPILKAN KODE!

// #1
  final String data = '''
 // #1
  List<Map<String, dynamic>> products = [  // FoldStart: section1
    {
      "id": 1,
      "photo":
          "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045560/mq2o8cqtmvaobrnil7xi.png",
      "product_name": "Frenzy Pizza",
      "price": 25,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 20,
      "is_favorite": false,
    },
    {
      "id": 2,
      "photo":
          "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045565/cvx59ia4kvqj2ratfkjs.png",
      "product_name": "Beef Burger",
      "price": 22,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 18,
      "is_favorite": true,
    },
    {
      "id": 3,
      "photo":
          "https://images.unsplash.com/photo-1625869016774-3a92be2ae2cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
      "product_name": "Seperait",
      "price": 33,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 28,
      "is_favorite": false,
    },
    {
      "id": 4,
      "photo":
          "https://images.unsplash.com/photo-1578160112054-954a67602b88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
      "product_name": "Fried Rice",
      "price": 31,
      "category": "Food",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 25,
      "is_favorite": true,
    },
    {
      "id": 5,
      "photo":
          "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716045569/cpiafx7w5euet8dctcho.png",
      "product_name": "Terrano Milk",
      "price": 32,
      "category": "Drink",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
      "discount_price": 28,
      "is_favorite": true,
    },
  ]; // FoldEnd: section1

  // #2
  increaseQty(Map item) {
    item["qty"]++;
    update();
  }

  // #3
  decreaseQty(Map item) {
    item["qty"]--;
    update();
  }
''';

  final String vieew = '''
// #4
ListView.builder( // FoldStart: section1
  itemCount: controller.products.length,
  shrinkWrap: true,
  scrollDirection: Axis.vertical,
  padding: EdgeInsets.zero,
  clipBehavior: Clip.none,
  itemBuilder: (context, index) {
    var item = controller.products[index];
    item["qty"] ??= 0;

    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Image.network(
            item["photo"],
            fit: BoxFit.cover,
            loadingBuilder: (
              BuildContext context,
              Widget child,
              ImageChunkEvent? loadingProgress,
            ) {
              if (loadingProgress == null) {
                return child; // Tampilkan gambar siap
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
        title: Text(item["product_name"]),
        subtitle: Text("\${item["price"]} USD"),
        trailing: SizedBox(
          width: 120.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 12.0,
                child: Center(
                  child: IconButton(
                    onPressed: () => controller.decreaseQty(item),
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 9.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\${item["qty"]}",
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 12.0,
                child: Center(
                  child: IconButton(
                    onPressed: () => controller.increaseQty(item),
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 9.0,
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
) // FoldEnd: section1
''';

  // #3
  late final CodeController dataController;
  late final CodeController vieewController;

  // #4
  DCartController() {
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
