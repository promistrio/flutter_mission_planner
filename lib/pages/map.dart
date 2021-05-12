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
    MissionManager missionManager = Provider.of<MissionManager>(context);
    List<Marker> listMarkers = missionManager.missionMarkers;
    return Scaffold(
        body: MapWidget(),
        floatingActionButton: FloatingActionButton(
          key: const Key('increment_floatingActionButton'),
          onPressed: () => missionManager.addWaypoint(),
          child: const Icon(Icons.add),
        ),
        drawer: Opacity(
          opacity: 0.7,
          child: Drawer(
              child: ReorderableListView(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  children: <Widget>[
                    for (int index = 0; index < listMarkers.length; index++)
                      ListTile(
                        key: Key('$index'),
                        tileColor: index % 2 == 1 ? Colors.white : Colors.blue,
                        title: Text('Item ${listMarkers[index]}'),
                      ),
                  ],
                  onReorder: (int oldIndex, int newIndex) {
                    print("$oldIndex $newIndex");
                    missionManager.swapMarkers(oldIndex - 1, newIndex - 1);
                  })),
        ));
  }
}

class MapWidget extends StatelessWidget {
  const MapWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MapController mapController =
        Provider.of<MissionManager>(context).mapController;
    LatLng paris = LatLng(48.8566, 2.3522);
    return Stack(children: <Widget>[
      FlutterMap(
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
              urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
              subdomains: ['a', 'b', 'c']),
          MarkerLayerOptions(
              markers: context.watch<MissionManager>().missionMarkers),
          PolylineLayerOptions(polylines: [
            Polyline(
              points: context.watch<MissionManager>().missionLines,
              color: Colors.black,
              //points:<LatLng>[LatLng(46.213951, 39.939196), LatLng(46.113951, 39.639196)]
            )
          ]),
          CircleLayerOptions(circles: [
            CircleMarker(
                //radius marker
                point: LatLng(46.213951, 39.939196),
                color: Colors.blue.withOpacity(0.3),
                borderStrokeWidth: 3.0,
                borderColor: Colors.blue,
                radius: 100, //radius
                useRadiusInMeter: true)
          ]),
        ],
      ),
      Center(
        child: Opacity(
            opacity: 0.6,
            child: Icon(
              TablerIcons.crosshair,
              color: Colors.teal,
              size: 24.0,
            )),
      ),
    ]);
  }
}
