// This page navigates to different screens of app from bottom navigation bar

import 'package:av_model/Screens/Satt%20UI/Dashborad%20page/dashboard_page.dart';
import 'package:av_model/Screens/Satt%20UI/Manage%20fleet/manage_fleet.dart';
import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  final _pageOptions = [
    StaffDashboard(),
    StaffDashboard(),// Import page for bookings here
    ManageFleet(),
    StaffDashboard(),  // Import page for Settings here

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ContainerWhite,
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_outlined,color: NavBarIconColor,size: 30),
                activeIcon: Icon(Icons.dashboard_outlined,color: SelectedIconColor,),
                title: Text('Dashboard', style: TextStyle(color: NavBarIconColor))),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/bookings_new_icon.png"), color: NavBarIconColor,size: 30,),
                activeIcon: ImageIcon(AssetImage("assets/icons/bookings_new_icon.png"), color: SelectedIconColor,size: 30,),
                title: Text('Bookings', style: TextStyle(color: NavBarIconColor))),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart,size: 30,color: NavBarIconColor,),
                activeIcon: Icon(Icons.bar_chart,size:30,color: SelectedIconColor,),
                title: Text('Manage Fleet', style: TextStyle(color: NavBarIconColor))),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,color: NavBarIconColor,),
                activeIcon: Icon(Icons.settings,color: SelectedIconColor,),
                title: Text('Settings', style: TextStyle(color: NavBarIconColor))),
          ],
          elevation: 10,
          currentIndex: selectedPage,
          backgroundColor: Colors.white,
          onTap: (index){
            setState(() {
              selectedPage = index;
            });
          },
        )
    );
  }
}