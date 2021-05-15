import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';

enum WayPointType {
  waypoint,
  spiral,
  homepoint,
}

List<String> getWayPointTypeList() {
  return ["Waypoint", "Spiral"];
}

int typeToIndex(WayPointType type) {
  switch (type) {
    case WayPointType.waypoint:
      return 0;
    case WayPointType.spiral:
      return 1;
    default:
      print("undefined wp type");
  }
}

WayPointType indexToType(index) {
  switch (index) {
    case 0:
      return WayPointType.waypoint;
    case 1:
      return WayPointType.spiral;
  }
}

class WayPoint {
  WayPointType type;
  int height;
  int loops;
  int radius;
  LatLng pos;

  WayPoint(this.type, this.pos);

  Map toJson() => {
        'lat': pos.latitude,
        'lon': pos.longitude,
        'alt': height,
        'loops': loops,
        'radius': radius,
        'type': type == WayPointType.spiral
            ? 18 //18 - spiral spiral
            : 16 //16 waypoint in ardupilot
      };
}

class WayPointsModel {
  List<WayPoint> _points = [];
  List<Marker> _markers = [];
  List<Widget> _listItems = [];

  void add(WayPointType type, LatLng pos) {
    _points.add(new WayPoint(type, pos));
    _points.last.height = 10;
    _points.last.loops = 5;
    _points.last.radius = 5;
    updateModel();
  }

  void delete(int delIndex) {
    RangeError.checkValidIndex(delIndex, _points);
    _points.removeAt(delIndex);
    updateModel();
    //update numbers code
  }

  void swap(int index1, int index2) {
    _points.swap(index1, index2);
    updateModel();
  }

  void edit(int index, WayPoint point) {
    RangeError.checkValidIndex(index, _points);
    _points[index] = point;
    updateModel();
  }

  void move(int index, LatLng pos) {
    RangeError.checkValidIndex(index, _points);
    _points[index].pos = pos;
  }

  List<WayPoint> points() {
    return _points;
  }

  List<Widget> listItems() {
    return _listItems;
  }

  List getCircles() {}

  void updateModel() {
    _markers.clear();
    _listItems.clear();

    _points.asMap().forEach((i, value) {
      //print('index=$i, value=${value.pos}');
      _listItems.add(createListViewItem(i, value.type));
    });
  }

  Widget createListViewItem(int index, WayPointType type) {
    return ListTile(
      key: Key('$index'),
      tileColor: index % 2 == 1 ? Colors.white : Colors.blue,
      title: Text('Item $index'),
    );
  }
}

extension ListSwap<T> on List<T> {
  void swap(int index1, int index2) {
    var length = this.length;
    RangeError.checkValidIndex(index1, this, "index1", length);
    RangeError.checkValidIndex(index2, this, "index2", length);
    if (index1 != index2) {
      var tmp1 = this[index1];
      this[index1] = this[index2];
      this[index2] = tmp1;
    }
  }
}
