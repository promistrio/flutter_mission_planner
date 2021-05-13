import 'package:airspector_mission_planner/bloc/waypoints_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter/material.dart';

class MissionManager with ChangeNotifier, DiagnosticableTreeMixin {
  MapController mapController = new MapController();

  WayPointsModel _wpModel = new WayPointsModel();

  List<WayPoint> _missionMarkers = [];
  List<LatLng> _missionLines = [];
  List<Widget> _missionList = [];

  // active waypoint contoller
  int _activeWaypoint = -1;
  int get activeWaypoint => _activeWaypoint;
  set activeWaypoint(i) {
    _activeWaypoint = i;
    notifyListeners();
  }

  List<WayPoint> get missionMarkers => _missionMarkers;
  List<Widget> get missionList => _missionList;
  List<LatLng> get missionLines => _missionMarkers
      .map((currentMarker) =>
          new LatLng(currentMarker.pos.latitude, currentMarker.pos.longitude))
      .toList();

  void addWaypoint() {
    mapController.onReady.then((result) {
      _wpModel.add(WayPointType.waypoint, mapController.center);
      _missionMarkers = _wpModel.points();
      _missionList = _wpModel.listItems();
      notifyListeners();
    });
  }

  void swap(oldIndex, newIndex) {
    _wpModel.swap(oldIndex, newIndex);
    notifyListeners();
  }
}
