import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/drawer.dart';
import '../bloc/mission_manager.dart';
import '../widgets/map.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MissionManager missionManager = Provider.of<MissionManager>(context);
    return Scaffold(
        body: MapWidget(),
        floatingActionButton: FloatingActionButton(
          key: const Key('increment_floatingActionButton'),
          onPressed: () => missionManager.addWaypoint(),
          child: const Icon(Icons.add),
        ),
        drawer: Opacity(opacity: 0.7, child: MissionDrawer()));
  }
}
