import 'package:airspector_mission_planner/bloc/waypoints_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:numberpicker/numberpicker.dart';
import '../bloc/mission_manager.dart';

class PointEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MissionManager missionManager = Provider.of<MissionManager>(context);
    WayPoint point =
        missionManager.missionMarkers[missionManager.activeWaypoint];
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 300,
        child: Container(
            child: Column(
          children: [
            ToggleSwitch(
              minWidth: 140,
              initialLabelIndex: point.type == WayPointType.waypoint ? 1 : 0,
              labels: getWayPointTypeList(),
              onToggle: (index) {
                point.type = indexToType(index);
                missionManager.edit(missionManager.activeWaypoint, point);
              },
            ),
            Row(
              children: [
                Column(children: [
                  Text("Height"),
                  NumberPicker(
                    value: point.height,
                    minValue: 1,
                    maxValue: 100,
                    onChanged: (value) {
                      point.height = value;
                      missionManager.edit(missionManager.activeWaypoint, point);
                    },
                  )
                ]),
                Column(children: [
                  Text("Radius"),
                  NumberPicker(
                    value: point.radius,
                    minValue: 3,
                    maxValue: 100,
                    onChanged: (value) {
                      point.radius = value;
                      missionManager.edit(missionManager.activeWaypoint, point);
                    },
                  )
                ]),
                Column(children: [
                  Text("Loops"),
                  NumberPicker(
                    value: point.loops,
                    minValue: 1,
                    maxValue: 100,
                    onChanged: (value) {
                      point.loops = value;
                      missionManager.edit(missionManager.activeWaypoint, point);
                    },
                  )
                ])
              ],
            )
          ],
        )),
        margin: EdgeInsets.only(bottom: 50, left: 12, right: 12, top: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
