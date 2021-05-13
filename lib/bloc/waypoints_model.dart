import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter/material.dart';

enum WayPointType {
  waypoint,
  spiral,
  homepoint,
}

class WayPoint {
  WayPointType type;
  int height;
  int loops;
  LatLng pos;

  WayPoint(this.type, this.pos);
}

class WayPointsModel {
  List<WayPoint> _points = [];
  List<Marker> _markers = [];
  List<Widget> _listItems = [];

  void add(WayPointType type, LatLng pos) {
    _points.add(new WayPoint(type, pos));
    updateModel();
  }

  void delete(int delIndex) {
    RangeError.checkValidIndex(delIndex, _points);
    _points.asMap().forEach((key, value) {
      print(key);
    });
    //delete code
    //update numbers code
  }

  void swap(int index1, int index2) {
    _points.swap(index1, index2);
    updateModel();
  }

  void move(int index) {}

  List<WayPoint> points() {
    return _points;
  }

  List<Widget> listItems() {
    return _listItems;
  }

  List<LatLng> getLanLng() {}

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
