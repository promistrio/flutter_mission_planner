import 'package:airspector_mission_planner/bloc/waypoints_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';

class MissionManager with ChangeNotifier, DiagnosticableTreeMixin {
  final Socket channel;
  MissionManager(this.channel) {
    channel.listen((List<int> event) {
      print("received data: " + utf8.decode(event));
    });
  }

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

  void addWaypoint(WayPointType type) {
    mapController.onReady.then((result) {
      _wpModel.add(type, mapController.center);
      _missionMarkers = _wpModel.points();
      _missionList = _wpModel.listItems();
      _activeWaypoint = missionMarkers.length - 1;
      sendMission();
      notifyListeners();
    });
  }

  void swap(oldIndex, newIndex) {
    _wpModel.swap(oldIndex, newIndex);
    notifyListeners();
  }

  void delete(int index) {
    _wpModel.delete(index);
    notifyListeners();
  }

  void edit(int index, WayPoint point) {
    _wpModel.edit(index, point);
    notifyListeners();
  }

  void moveMap(LatLng pos) {
    mapController.move(pos, mapController.zoom);
    notifyListeners();
  }

  void movePointToCenter() {
    if (_missionMarkers.asMap().containsKey(_activeWaypoint)) {
      _wpModel.move(_activeWaypoint, mapController.center);
    }

    notifyListeners();
  }

  void sendMission() {
    channel.add(utf8.encode(jsonEncode({"data": _missionMarkers})));
  }
}
