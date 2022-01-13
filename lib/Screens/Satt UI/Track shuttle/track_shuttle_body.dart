import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:im_stepper/stepper.dart';
import 'dart:math' as math;

class TrackShuttleBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_TrackShuttleBody();
}

class _TrackShuttleBody extends State<TrackShuttleBody>{
  int activeStep = 1;
  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Padding(
           padding: EdgeInsets.symmetric(vertical:20,horizontal: 10),
           child: Container(
             width: 380,
             height: 394,
             decoration: BoxDecoration(
               color: ContainerWhite,
               borderRadius: BorderRadius.circular(10),
             ),
             child: Column(
               children: [
                 //-------------------------------------------------------------
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Container(
                     height: 138,
                     width: 315,
                     decoration: BoxDecoration(
                       color: ContainerWhite,
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child:
                     Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 20),
                               child: Image.asset("assets/images/blue_cart.png")),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const SizedBox(height: 25),
                               const Text("Green 6 seater",
                                   style: TextStyle(
                                       fontWeight: FontWeight.bold, fontSize: 16)),
                               Padding(
                                 padding:const EdgeInsets.symmetric(vertical: 5),
                                 child: Row(
                                     children:const[
                                       Text("2 mins to end",
                                           style: TextStyle(
                                               color:Colors.blue,fontWeight: FontWeight.bold, fontSize: 20)),

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
                               const SizedBox(height: 5),
                               Row(
                                   children: [
                                     Text("18 ",
                                       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                     Column(
                                         children:[
                                           Padding(
                                             padding: EdgeInsets.symmetric(vertical: 2),
                                             child: Text("KM left",
                                               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                           ),
                                         ]
                                     ),
                                   ]
                               ),
                             ],
                           ),
                         ]
                     ),
                   ),
                 ),
                 //-------------------------------------------------------------

                 Container(
                 height: 160,
                 width: 325,
                 color:ContainerBlue,
                   child:LocationInfo(),
                       /* Stepper widget not working
                       Column(
                       children: [
                         Padding(
                           padding:EdgeInsets.symmetric(horizontal:10,vertical: 50),
                           child: Transform.rotate(
                             angle: 1.55,
                             child: IconStepper(
                               enableNextPreviousButtons: false,
                               enableStepTapping: false,
                               scrollingDisabled: true,
                               activeStepBorderColor: ContainerBlue,
                               activeStepBorderPadding: 0,
                               activeStepBorderWidth: 0,
                               activeStepColor: ContainerBlue,
                               stepColor: ContainerBlue,
                               lineColor: Colors.white,
                               stepPadding: 0,
                               lineLength: 10,
                               icons: [
                                 Icon(Icons.supervised_user_circle,color: Colors.white,size: 5,),
                                 Icon(Icons.flag,color: Colors.white),
                                 Icon(Icons.access_alarm,color: Colors.white),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),*/
                   ),

                 const SizedBox(height: 10),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       width: 156,
                       height: 50,
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(primary: ButtonColor),
                         onPressed: (){},
                           child:Text("Settings") ,),
                     ),
                     Container(
                       width: 156,
                       height: 50,
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(primary: ButtonColor),
                         onPressed: (){},
                         child:Text("Cancel Shuttle") ,),
                     ),
                   ],
                 ),

                 const SizedBox(height: 10),
                 const Text("Requested by Room Guest- Sarthak Tiwary",
                 style: TextStyle(fontWeight: FontWeight.bold),)
               ],
             ),
           ),
         ),

         //---------------------------------------------------------------------

         Padding(
           padding: EdgeInsets.symmetric(vertical:20,horizontal: 10),
           child: Container(
             width: 380,
             height: 394,
             decoration: BoxDecoration(
               color: ContainerWhite,
               borderRadius: BorderRadius.circular(10),
             ),
             child: Column(
               children: [
                 //-------------------------------------------------------------
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Container(
                     height: 138,
                     width: 315,
                     decoration: BoxDecoration(
                       color: ContainerWhite,
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child:
                     Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 20),
                               child: Image.asset("assets/images/red_cart.png.png")),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const SizedBox(height: 15),
                               const Text("Red 4 seater",
                                   style: TextStyle(
                                       fontWeight: FontWeight.bold, fontSize: 16)),
                               Padding(
                                 padding:const EdgeInsets.symmetric(vertical: 5),
                                 child: Row(
                                     children:const[
                                       Text("2 mins to end",
                                           style: TextStyle(
                                               color:Colors.blue,fontWeight: FontWeight.bold, fontSize: 20)),

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
                               Padding(
                                   padding: EdgeInsets.symmetric(vertical: 10),
                                   child: Row(
                                     children: [
                                       Text("18 ",
                                       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                       Column(
                                         children:[
                                           Padding(
                                           padding: EdgeInsets.symmetric(vertical: 2),
                                           child: Text("KM left",
                                             style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                         ),
                   ]
                                       ),
                                   ]
                                   ),
                           ),
                             ],
                           ),
                         ]
                     ),
                   ),
                 ),
                 //-------------------------------------------------------------

                 Container(
                   height: 160,
                   width: 325,
                   color:ContainerBlue,
                   child:LocationInfo2(),
                   /* Stepper widget not working
                       Column(
                       children: [
                         Padding(
                           padding:EdgeInsets.symmetric(horizontal:10,vertical: 50),
                           child: Transform.rotate(
                             angle: 1.55,
                             child: IconStepper(
                               enableNextPreviousButtons: false,
                               enableStepTapping: false,
                               scrollingDisabled: true,
                               activeStepBorderColor: ContainerBlue,
                               activeStepBorderPadding: 0,
                               activeStepBorderWidth: 0,
                               activeStepColor: ContainerBlue,
                               stepColor: ContainerBlue,
                               lineColor: Colors.white,
                               stepPadding: 0,
                               lineLength: 10,
                               icons: [
                                 Icon(Icons.supervised_user_circle,color: Colors.white,size: 5,),
                                 Icon(Icons.flag,color: Colors.white),
                                 Icon(Icons.access_alarm,color: Colors.white),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),*/
                 ),

                 const SizedBox(height: 10),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       width: 156,
                       height: 50,
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(primary: ButtonColor),
                         onPressed: (){},
                         child:Text("Settings") ,),
                     ),
                     Container(
                       width: 156,
                       height: 50,
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(primary: ButtonColor),
                         onPressed: (){},
                         child:Text("Cancel Shuttle") ,),
                     ),
                   ],
                 ),

                 const SizedBox(height: 10),
                 const Text("Requested by Room Guest- Sarthak Tiwary",
                   style: TextStyle(fontWeight: FontWeight.bold),)
               ],
             ),
           ),
         ),

         //---------------------------------------------------------------------
         Padding(
           padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
           child: Container(
             width: 380,
             height: 394,
             decoration: BoxDecoration(
               color: ContainerWhite,
               borderRadius: BorderRadius.circular(10),
             ),
             child: Column(
               children: [
                 //-------------------------------------------------------------
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Container(
                     height: 138,
                     width: 315,
                     decoration: BoxDecoration(
                       color: ContainerWhite,
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child:
                     Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 20),
                               child: Image.asset("assets/images/blue_cart.png")),
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const SizedBox(height: 25),
                               const Text("Green 6 seater",
                                   style: TextStyle(
                                       fontWeight: FontWeight.bold, fontSize: 16)),
                               Padding(
                                 padding:const EdgeInsets.symmetric(vertical: 5),
                                 child: Row(
                                     children:const[
                                       Text("2 mins to end",
                                           style: TextStyle(
                                               color:Colors.blue,fontWeight: FontWeight.bold, fontSize: 20)),

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
                               const SizedBox(height: 5),
                               Row(
                                   children: [
                                     Text("18 ",
                                       style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                     Column(
                                         children:[
                                           Padding(
                                             padding: EdgeInsets.symmetric(vertical: 2),
                                             child: Text("KM left",
                                               style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                           ),
                                         ]
                                     ),
                                   ]
                               ),
                             ],
                           ),
                         ]
                     ),
                   ),
                 ),
                 //-------------------------------------------------------------

                 Container(
                   height: 160,
                   width: 325,
                   color:ContainerBlue,
                   child:LocationInfo(),
                   /* Stepper widget not working
                       Column(
                       children: [
                         Padding(
                           padding:EdgeInsets.symmetric(horizontal:10,vertical: 50),
                           child: Transform.rotate(
                             angle: 1.55,
                             child: IconStepper(
                               enableNextPreviousButtons: false,
                               enableStepTapping: false,
                               scrollingDisabled: true,
                               activeStepBorderColor: ContainerBlue,
                               activeStepBorderPadding: 0,
                               activeStepBorderWidth: 0,
                               activeStepColor: ContainerBlue,
                               stepColor: ContainerBlue,
                               lineColor: Colors.white,
                               stepPadding: 0,
                               lineLength: 10,
                               icons: [
                                 Icon(Icons.supervised_user_circle,color: Colors.white,size: 5,),
                                 Icon(Icons.flag,color: Colors.white),
                                 Icon(Icons.access_alarm,color: Colors.white),
                               ],
                             ),
                           ),
                         ),
                       ],
                     ),*/
                 ),

                 const SizedBox(height: 10),

                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                       width: 156,
                       height: 50,
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(primary: ButtonColor),
                         onPressed: (){},
                         child:Text("Settings") ,),
                     ),
                     Container(
                       width: 156,
                       height: 50,
                       child: ElevatedButton(
                         style: ElevatedButton.styleFrom(primary: ButtonColor),
                         onPressed: (){},
                         child:Text("Cancel Shuttle") ,),
                     ),
                   ],
                 ),

                 const SizedBox(height: 10),
                 const Text("Requested by Room Guest- Sarthak Tiwary",
                   style: TextStyle(fontWeight: FontWeight.bold),)
               ],
             ),
           ),
         ),
       ],

     ),
   );
  }
}






Widget LocationInfo(){
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
            children:[
              const Icon(Icons.disc_full_outlined,color: Colors.white),
              Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: const Icon(Icons.more_horiz,color: Colors.white)),
              const Icon(Icons.location_on_outlined ,color: Colors.white),
              Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: const Icon(Icons.more_horiz,color: Colors.white)),

              const Icon(Icons.add,color: Colors.white),
            ]

        ),
      ),

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const SizedBox(height: 20),
            const Text("Room 3006",
                style: TextStyle(color: Colors.white,fontSize: 16)),
          const SizedBox(height: 15),
          Container(
            width: 210,
              height: 10,
              child: Image.asset("assets/images/Line.png")),
          const SizedBox(height: 8),
          const Text("Beach restaurant",
              style: TextStyle(color: Colors.white,fontSize: 16)),
          const SizedBox(height: 15),
          Container(
              width: 210,
              height: 10,
              child: Image.asset("assets/images/Line.png")),
          const SizedBox(height: 5),
          const Text("Add location",
              style: TextStyle(color: Colors.white,fontSize: 16)),
        ],
      ),
      const SizedBox(width: 10),

      Padding(
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: [

            Transform.rotate(
                angle: 90 * math.pi / 180,
                child: const Icon(Icons.more_horiz,color: Colors.white)),
            const SizedBox(height: 20),

            const Icon(Icons.import_export,color: Colors.white),

          ],

        ),
      ),
    ],

  );
}


Widget LocationInfo2(){
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
            children:[
              const Icon(Icons.disc_full_outlined,color: Colors.white),
              Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: const Icon(Icons.more_horiz,color: Colors.white)),
              const Icon(Icons.location_on_outlined ,color: Colors.white),
              Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: const Icon(Icons.more_horiz,color: Colors.white)),

              const Icon(Icons.add,color: Colors.white),
            ]

        ),
      ),

      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          const SizedBox(height: 20),
          const Text("Reception",
              style: TextStyle(color: Colors.white,fontSize: 16)),
          const SizedBox(height: 15),
          Container(
              width: 210,
              height: 10,
              child: Image.asset("assets/images/Line.png")),
          const SizedBox(height: 8),
          const Text("Room 3006",
              style: TextStyle(color: Colors.white,fontSize: 16)),
          const SizedBox(height: 15),
          Container(
              width: 210,
              height: 10,
              child: Image.asset("assets/images/Line.png")),
          const SizedBox(height: 5),
          const Text("Add location",
              style: TextStyle(color: Colors.white,fontSize: 16)),
        ],
      ),
      const SizedBox(width: 10),

      Padding(
        padding: EdgeInsets.symmetric(vertical: 25),
        child: Column(
          children: [

            Transform.rotate(
                angle: 90 * math.pi / 180,
                child: const Icon(Icons.more_horiz,color: Colors.white)),
            const SizedBox(height: 20),

            const Icon(Icons.import_export,color: Colors.white),

          ],

        ),
      ),
    ],

  );
}

