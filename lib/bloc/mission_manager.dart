import 'package:flutter/foundation.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter/material.dart';

class MissionManager with ChangeNotifier, DiagnosticableTreeMixin {
  MapController mapController = new MapController();

  List<Marker> _missionMarkers = [];

  List<Marker> get missionMarkers => _missionMarkers;

  void addWaypoint() {
    mapController.onReady.then((result) {
      //mapController.move(LatLng(51.5, -0.09), 13.0);

      _missionMarkers.add(
        Marker(
          width: 30.0,
          height: 30.0,
          point: mapController.center,
          builder: (ctx) => Container(
              child: Column(
            children: <Widget>[
              //Text('${context.watch<Counter>().count}'),
              Icon(Icons.control_point),
            ],
          )),
        ),
      );
      notifyListeners();
    });
  }
}

/*class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  MapController mapController = new MapController();
  
  List<Marker> _missionMarkers = [];

  List<Marker> get missionMarkers => _missionMarkers;

  void addWaypoint(MapController controller) {
    controller.onReady.then((result) {
      controller.move(LatLng(51.5, -0.09), 13.0);
    });
    notifyListeners();
    _missionMarkers.add(
      Marker(
        width: 30.0,
        height: 30.0,
        point: controller.center,
        builder: (ctx) => Container(
            child: Column(
          children: <Widget>[
            //Text('${context.watch<Counter>().count}'),
            Icon(Icons.control_point),
          ],
        )),
      ),
    );
  }*/

/*/// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
  }
}*/
