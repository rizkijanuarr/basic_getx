import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import '../controller/k_map_remote_datasource_controller.dart';
import 'package:basic_getx/core.dart';
import 'package:get/get.dart';

class KMapRemoteDatasourceView extends StatelessWidget {
  const KMapRemoteDatasourceView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<KMapRemoteDatasourceController>(
      init: KMapRemoteDatasourceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("K Map Remote Datasource"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Builder(
                    builder: (context) {
                      List<Marker> allMarkers = [
                        const Marker(
                          point: LatLng(
                            -6.1754234,
                            106.827224,
                          ),
                          child: Icon(
                            Icons.pin_drop,
                            color: Colors.red,
                            size: 24,
                          ),
                        ),
                        const Marker(
                          point: LatLng(
                            -6.1754234,
                            106.828524,
                          ),
                          child: Icon(
                            Icons.pin_drop,
                            color: Colors.green,
                            size: 24,
                          ),
                        ),
                        const Marker(
                          point: LatLng(
                            -6.1767234,
                            106.828524,
                          ),
                          child: Icon(
                            Icons.pin_drop,
                            color: Colors.blue,
                            size: 24,
                          ),
                        ),
                        const Marker(
                          point: LatLng(
                            -6.1767234,
                            106.827224,
                          ),
                          child: Icon(
                            Icons.pin_drop,
                            color: Colors.orange,
                            size: 24,
                          ),
                        ),
                      ];

                      List<LatLng> polygonPoints =
                          allMarkers.map((marker) => marker.point).toList();

                      LatLngBounds bounds =
                          LatLngBounds.fromPoints(polygonPoints);

                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: FlutterMap(
                          options: const MapOptions(),
                          children: [
                            TileLayer(
                              urlTemplate:
                                  'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                              userAgentPackageName:
                                  'dev.fleaflet.flutter_map.example',
                            ),
                            PolygonLayer(
                              polygons: [
                                Polygon(
                                  points: polygonPoints,
                                  color: Colors.black.withOpacity(0.6),
                                  isFilled: true,
                                ),
                              ],
                            ),
                            MarkerLayer(
                              markers: allMarkers,
                            ),
                          ],
                        ),
                      );
                    },
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
                              controller: controller.dataccController,
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
