import 'package:api_complet/components/toolbar.dart';
import 'package:api_complet/config/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.nearby),
      body: FlutterMap(
        options: const MapOptions(
          crs: Epsg3857(), // Système de coordonnées EPSG:3857
          initialCenter: LatLng(51.509336, -0.128928), // Centre initial de la carte
          initialZoom: 10.0, // Zoom initial


        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(51.509336, -0.128928),
                width: 60.0, // Width of the marker
                height: 60.0, // Height of the marker
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4
                  ),
                  width: 30.0, // Width of the marker's content
                  height: 30.0, // Height of the marker's content
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0), // Rounded corners
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.location_on,
                      color: Colors.black,
                      size: 20.0, // Size of the icon
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
