import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
//import 'package:location/location.dart';
import '../widgets/drawer.dart';
import '../bloc/mission_manager.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamic missionManager = Provider.of<MissionManager>(context);
    return Scaffold(
      body: MapWidget(),
      floatingActionButton: FloatingActionButton(
        key: const Key('increment_floatingActionButton'),
        onPressed: () => missionManager.addWaypoint(),
        child: const Icon(Icons.add),
      ),
    );
  }
}



class MapWidget extends StatelessWidget {
  const MapWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MapController mapController = Provider.of<MissionManager>(context).mapController;
    LatLng paris = LatLng(48.8566, 2.3522);
    return Container(
        child: FlutterMap(
          mapController: mapController,
          
          options: MapOptions(
            //onTap: (point) {mapController.move(paris, 5.0);},
            center: LatLng(46.213951, 39.939196),
            zoom: 13.0,
            maxZoom: 19.0,
            minZoom: 5.0,
            interactiveFlags: InteractiveFlag.pinchZoom |
                InteractiveFlag.drag |
                InteractiveFlag.doubleTapZoom |
                InteractiveFlag.flingAnimation,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c']),
            MarkerLayerOptions(markers: context.watch<MissionManager>().missionMarkers)
          ],
        ));
  }
}