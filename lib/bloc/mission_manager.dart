import 'package:airspector_mission_planner/bloc/waypoints_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

import 'package:grpc/grpc.dart';
import '../proto_models/helloworld.pb.dart';
import '../proto_models/helloworld.pbgrpc.dart';

class MissionManager with ChangeNotifier, DiagnosticableTreeMixin {
  final channel = ClientChannel('10.42.0.1',
      port: 50051,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ));
  MavControlClient stub;

  Timer timer;
  LatLng uavMarker;

  MissionManager() {
    uavMarker = LatLng(0, 0);
    stub = MavControlClient(channel);
    const oneSec = const Duration(milliseconds: 300);
    new Timer.periodic(oneSec, (Timer t) => updateUavMarker());
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
      notifyListeners();
    });
  }

  void updateUavMarker() {
    try {
      stub
          .getGlobalPosition(
        GlobalPositionRequest()..name = "123",
        options: CallOptions(compression: const GzipCodec()),
      )
          .then((response) {
        uavMarker = LatLng(response.lat, response.lon);
        notifyListeners();
      });
    } catch (e) {
      print('Caught error: $e');
    }
  }

  void swap(oldIndex, newIndex) {
    _wpModel.swap(oldIndex, newIndex);
    notifyListeners();
  }

  void delete(int index) {
    _wpModel.delete(index);
    notifyListeners();
  }

  void uploadMission() {
    try {
      Mission mission = new Mission();
      Waypoint wp = new Waypoint();

      missionMarkers.forEach((p) {
        Waypoint wp = new Waypoint();
        wp.type = p.type == WayPointType.spiral ? 18 : 16;
        wp.lat = (p.pos.latitude * 10e6).toInt();
        wp.lon = (p.pos.longitude * 10e6).toInt();
        wp.alt = p.height;
        wp.radius = p.radius.toDouble();
        wp.loops = p.loops.toDouble();
        mission.wp.add(wp);
      });

      stub
          .setMission(
        mission,
        options: CallOptions(compression: const GzipCodec()),
      )
          .then((response) {
        print('Mav client received:  lat: ${response.status}');
        notifyListeners();
      });
    } catch (e) {
      print('Caught error: $e');
    }
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

  void movePointToUAV() {
    if (_missionMarkers.asMap().containsKey(_activeWaypoint)) {
      _wpModel.move(_activeWaypoint, uavMarker);
    }
    notifyListeners();
  }
}
