import 'package:airspector_mission_planner/bloc/waypoints_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_map/flutter_map.dart';
import '../bloc/mission_manager.dart';

class MissionDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MissionManager missionManager = Provider.of<MissionManager>(context);
    List<WayPoint> missionList = missionManager.missionMarkers;
    return Drawer(
        child: ReorderableListView(
            children: //listMarkers
                List.generate(
                    missionList.length,
                    (index) => Dismissible(
                          key: UniqueKey(),
                          child: ListTile(
                            onTap: () {
                              missionManager.activeWaypoint = index;
                              missionManager.move(missionList[index].pos);
                            },
                            tileColor: missionManager.activeWaypoint == index
                                ? Colors.green
                                : Colors.blue,
                            title: Text('$index: ' +
                                getWayPointType(missionList[index].type)),
                          ),
                          background: Container(
                            child: Center(
                              child: Text(
                                'Delete',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            color: Colors.red,
                          ),
                          onDismissed: (DismissDirection direction) {
                            missionManager.delete(index);
                          },
                          direction: DismissDirection.startToEnd,
                        )),
            /*<Widget>[
          for (int index = 0; index < listMarkers.length; index++)
            
        ],*/
            onReorder: (int oldIndex, int newIndex) {
              print("$oldIndex $newIndex");
              missionManager.swap(oldIndex, newIndex);
              if (missionManager.activeWaypoint == oldIndex)
                missionManager.activeWaypoint = newIndex;
            }));
  }

  String getWayPointType(WayPointType tp) {
    if (tp == WayPointType.waypoint)
      return "Waypoint";
    else if (tp == WayPointType.spiral) return "Spiral";
  }
}

/*Widget _buildMenuItem(
    BuildContext context, Widget title, String routeName, String currentRoute) {
  var isSelected = routeName == currentRoute;

  return ListTile(
    title: title,
    selected: isSelected,
    onTap: () {
      if (isSelected) {
        Navigator.pop(context);
      } else {
        Navigator.pushReplacementNamed(context, routeName);
      }
    },
  );
}

Drawer buildDrawer(BuildContext context, String currentRoute) {
  return Drawer(
    child: ListView(
      children: <Widget>[
        const DrawerHeader(
          child: Center(
            child: Text('Flutter Map Examples'),
          ),
        ),
        _buildMenuItem(
          context,
          const Text('MapController'),
          MapControllerPage.route,
          currentRoute,
        ),
      ],
    ),
  );
}*/
