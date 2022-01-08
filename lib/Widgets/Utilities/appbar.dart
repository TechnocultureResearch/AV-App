import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;


AppBar appBar(String appBarText) {
      return AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70,
        leading: Transform.rotate(
          angle: 90 * math.pi / 180,
          child: IconButton(
            icon: Icon(
              Icons.bar_chart,
              color: Colors.black,
              size: 30,
            ),
            onPressed: (){},
          ),
        ),
        title: Text(
          appBarText,
          style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[

        ],
        titleTextStyle: const TextStyle(color: Colors.black),
        backgroundColor: PrimaryGrey,
      );
    }