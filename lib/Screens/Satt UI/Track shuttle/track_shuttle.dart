import 'package:av_model/Screens/Satt%20UI/Track%20shuttle/track_shuttle_body.dart';
import 'package:av_model/Screens/Satt%20UI/navigation_page.dart';
import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:av_model/Widgets/Utilities/appbar.dart';
import 'package:flutter/material.dart';

class TrackShuttle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_TrackShuttle();
}

class _TrackShuttle extends State<TrackShuttle>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryGrey,
      appBar: appBar("Track Shuttle"),
      body: TrackShuttleBody(),
      //bottomNavigationBar: HomePage(),
    );
  }
}