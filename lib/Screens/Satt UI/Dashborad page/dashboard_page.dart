import 'package:av_model/Screens/Satt%20UI/Dashborad%20page/dashboard_page_body.dart';
import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:av_model/Widgets/Utilities/appbar.dart';
import 'package:flutter/material.dart';

class StaffDashboard extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _StaffDashboard();
}

class _StaffDashboard extends State<StaffDashboard> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: PrimaryGrey,
     appBar: appBar("Dashboard"),
     body: DashboardBody(),
   );
  }

}