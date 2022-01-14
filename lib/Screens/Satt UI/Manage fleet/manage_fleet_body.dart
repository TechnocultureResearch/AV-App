import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:av_model/Widgets/Utilities/google_maps.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ManageFleetBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ManageFleetBody();
}

class _ManageFleetBody extends State<ManageFleetBody> {
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
     child: Column(
       children: [
         ContainerDetails1(),
         ContainerDetails2(),
         ContainerDetails1(),
       ],
     ),
   );
  }
}

Widget ContainerDetails1(){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child: Container(
      height: 280,
      width: 380,
      decoration: BoxDecoration(
        color: ContainerWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child:
      Column(
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset("assets/images/blue_cart.png")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      const Text("Green Shuttle",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Padding(
                        padding:const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                            children:[
                              const Text("25",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 32)),
                              Column(
                                  children:const [
                                    const SizedBox(height: 6),
                                    Text("km Left ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 18)),
                                  ]
                              ),
                            ]
                        ),
                      ),
                      Container(
                        width: 117,
                        height: 27,
                        child: LinearPercentIndicator(
                          //width: MediaQuery.of(context).size.width - 50,
                          animation: true,
                          lineHeight: 25.0,
                          animationDuration: 2000,
                          percent: 0.3,
                          center: const Text("30%",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ]
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.white,
                  child: Googlemaps(),
                ),
                const SizedBox(width: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:EdgeInsets.symmetric(vertical: 10) ,
                      child: Container(
                        height: 50,
                        width: 198,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: ButtonColor),
                          onPressed: (){

                          },
                          child: Text("Send for Self Charging"),
                        ),
                      ),
                    ),

                    Container(
                      height: 50,
                      width: 198,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: ButtonColor),
                        onPressed: (){

                        },
                        child: Text("Park at Different Location"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]
      ),
    ),
  );
}



Widget ContainerDetails2(){
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child: Container(
      height: 280,
      width: 380,
      decoration: BoxDecoration(
        color: ContainerWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child:
      Column(
          children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset("assets/images/red_cart.png.png")),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      const Text("Green Shuttle",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      Padding(
                        padding:const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                            children:[
                              const Text("31",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 32)),
                              Column(
                                  children:const [
                                    const SizedBox(height: 6),
                                    Text("km Left ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 18)),
                                  ]
                              ),
                            ]
                        ),
                      ),
                      Container(
                        width: 117,
                        height: 27,
                        child: LinearPercentIndicator(
                          //width: MediaQuery.of(context).size.width - 50,
                          animation: true,
                          lineHeight: 25.0,
                          animationDuration: 2000,
                          percent: 0.6,
                          center: const Text("60%",
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ]
            ),

            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 120,
                  color: Colors.white,
                  child: Googlemaps(),
                ),
                const SizedBox(width: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:EdgeInsets.symmetric(vertical: 10) ,
                      child: Container(
                        height: 50,
                        width: 198,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(primary: ButtonColor),
                          onPressed: (){

                          },
                          child: Text("Send for Self Charging"),
                        ),
                      ),
                    ),

                    Container(
                      height: 50,
                      width: 198,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: ButtonColor),
                        onPressed: (){

                        },
                        child: Text("Park at Different Location"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ]
      ),
    ),
  );
}