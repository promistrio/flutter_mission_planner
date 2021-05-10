import 'package:flutter_map/flutter_map.dart';
import 'package:flutter/material.dart';
import 'package:latlong/latlong.dart';
import 'dart:async';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
//import 'package:location/location.dart';
import '../widgets/drawer.dart';
import '../bloc/mission_manager.dart';

class MapControllerPage extends StatefulWidget {
  static const String route = 'map_controller';

  @override
  MapControllerPageState createState() {
    return MapControllerPageState();
  }
}

class MapControllerPageState extends State<MapControllerPage> {
  static LatLng london = LatLng(51.5, -0.09);
  static LatLng paris = LatLng(48.8566, 2.3522);
  static LatLng dublin = LatLng(53.3498, -6.2603);

  MapController mapController;
  double rotation = 0.0;

  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  @override
  Widget build(BuildContext context) {
    var markers = <Marker>[
      Marker(
        width: 80.0,
        height: 80.0,
        point: london,
        builder: (ctx) => Container(
          key: Key('blue'),
          child: FlutterLogo(),
        ),
      ),
      Marker(
        width: 80.0,
        height: 80.0,
        point: dublin,
        builder: (ctx) => Container(
          child: FlutterLogo(
            key: Key('green'),
            textColor: Colors.green,
          ),
        ),
      ),
      Marker(
          width: 80.0,
          height: 80.0,
          point: paris,
          builder: (ctx) => GestureDetector(
                onTap: () {
                  mapController.move(paris, 5.0);
                },
                child: Container(
                  key: Key('purple'),
                  child: FlutterLogo(textColor: Colors.purple),
                ),
              ))
    ];

    return Scaffold(
        drawer: buildDrawer(context, MapControllerPage.route),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Flexible(
                child: Stack(
              children: <Widget>[
                FlutterMap(
                  mapController: mapController,
                  options: MapOptions(
                    onTap: (point) {mapController.move(paris, 5.0);},
                    center: LatLng(51.5, -0.09),
                    zoom: 5.0,
                    maxZoom: 5.0,
                    minZoom: 3.0,
                  ),
                  layers: [
                    TileLayerOptions(
                        urlTemplate:
                            'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: ['a', 'b', 'c']),
                    MarkerLayerOptions(markers: markers)
                  ],
                ),
              ],
            ))));
  }
}

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({
    Key key,
    @required this.mapController,
  }) : super(key: key);

  final MapController mapController;

  @override
  _CurrentLocationState createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  int _eventKey = 0;

  var icon = Icons.gps_not_fixed;
  StreamSubscription<MapEvent> mapEventSubscription;

  @override
  void initState() {
    super.initState();

    mapEventSubscription =
        widget.mapController.mapEventStream.listen(onMapEvent);
  }

  @override
  void dispose() {
    mapEventSubscription.cancel();
    super.dispose();
  }

  void setIcon(IconData newIcon) {
    if (newIcon != icon && mounted) {
      setState(() {
        icon = newIcon;
      });
    }
  }

  void onMapEvent(MapEvent mapEvent) {
    if (mapEvent is MapEventMove && mapEvent.id == _eventKey.toString()) {
      setIcon(Icons.gps_not_fixed);
    }
  }

  void _moveToCurrent() async {
    /*_eventKey++;
    var location = Location();

    try {
      var currentLocation = await location.getLocation();
      var moved = widget.mapController.move(
        LatLng(currentLocation.latitude, currentLocation.longitude),
        18,
        id: _eventKey.toString(),
      );

      if (moved) {
        setIcon(Icons.gps_fixed);
      } else {
        setIcon(Icons.gps_not_fixed);
      }
    } catch (e) {
      setIcon(Icons.gps_off);
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: _moveToCurrent,
    );
  }
}
