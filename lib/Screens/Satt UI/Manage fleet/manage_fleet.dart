import 'package:av_model/Screens/Satt%20UI/Manage%20fleet/manage_fleet_body.dart';
import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:av_model/Widgets/Utilities/appbar.dart';
import 'package:flutter/material.dart';

class ManageFleet extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=> _ManageFleet();
}

class _ManageFleet extends State<ManageFleet> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: PrimaryGrey,
    appBar: appBar("Manage Fleet"),
    body: ManageFleetBody(),
  );
  }
}