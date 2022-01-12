import 'package:av_model/Screens/Satt%20UI/Send%20shuttle/send_shuttle_body.dart';
import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:av_model/Widgets/Utilities/appbar.dart';
import 'package:flutter/material.dart';

class SendShuttle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SendShuttle();

}

class _SendShuttle extends State<SendShuttle> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: PrimaryGrey,
    appBar: appBar("Send shuttle"),
    body: SendShuttleBody(),
  );
  }
}