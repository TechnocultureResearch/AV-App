import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:flutter/material.dart';

class DashboardBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_DashboardBody();

}

class _DashboardBody extends State<DashboardBody>{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          Row(
      children:[
          const SizedBox(width:15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              height: 138,
              width: 315,
              decoration: BoxDecoration(
                color: ContainerWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset("assets/images/blue_cart.png")),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Text("Green Shuttle",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text("25",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32)),
                    ),
                  ],
                ),
              ]
              ),
            ),
          ),
      ]
          ),
        ],
      ),
    );
  }
}