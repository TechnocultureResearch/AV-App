import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:av_model/Widgets/Constants/size.dart';
import 'package:av_model/Widgets/Utilities/google_maps.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:search_choices/search_choices.dart';

class SendShuttleBody extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SendShuttleBody();

}

class _SendShuttleBody extends State<SendShuttleBody>{
  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Container(
      height: height,
      width: width,
      child: Center(
        child: Stack(
          children: [
            Googlemaps(),

            // Place to add map

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20,vertical: 10),
                  child: Container(
                    width: 361,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: ContainerWhite,
                    ),
                    child: SearchChoices.single(
                      underline: DropdownButtonHideUnderline(child: Container()),
                      displayClearIcon: false,
                      padding: 0,
                      items:<String>['Main Gate', 'Reception', 'Golf Court', 'Restaurant']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: dropdownValue,
                      hint: const Padding(
                          padding:EdgeInsets.symmetric(horizontal: 10,vertical: 15) ,
                          child:Text("Send to which location?")),
                      searchHint: "Send to which location?",
                      onChanged:  (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      isExpanded: true,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 361,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: ContainerWhite,
                    ),
                    child: SearchChoices.single(
                      underline: DropdownButtonHideUnderline(child: Container()),
                      displayClearIcon: false,
                      padding: 0,
                      items:<String>['Main Gate', 'Reception', 'Golf Court', 'Restaurant']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: dropdownValue,
                      hint: const Padding(
                          padding:EdgeInsets.symmetric(horizontal: 10,vertical: 15) ,
                          child:Text("Set an Arrival Location?")),
                      searchHint: "Set an Arrival Location?",
                      onChanged:  (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      isExpanded: true,
                    ),
                  ),
                ),
              ],

            ),

                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          width: 414,
                          height: 329,
                          decoration: const BoxDecoration(
                            color: ContainerWhite,
                              borderRadius:  BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                                topRight:  Radius.circular(50.0),
                              )
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(

                           children: <Widget>[
                             Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 10),
                                       child: Image.asset("assets/images/red_cart.png.png")),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       const SizedBox(height: 25),
                                       const Text("4 person shuttle",
                                           style: TextStyle(
                                               fontWeight: FontWeight.bold, fontSize: 18)),
                                       Padding(
                                         padding:const EdgeInsets.symmetric(vertical: 5),
                                         child: Row(
                                             children:[
                                               const Text("3 minutes away",
                                                   style: TextStyle(
                                                       fontWeight: FontWeight.bold, fontSize: 14,color: Colors.grey)),
                                             ]
                                         ),
                                       ),
                                       Container(
                                         width: 117,
                                         height: 27,
                                         child: LinearPercentIndicator(
                                           //width: MediaQuery.of(context).size.width - 50,
                                           animation: true,
                                           lineHeight: 15.0,
                                           animationDuration: 2000,
                                           percent: 0.6,
                                           center: Image.asset("assets/icons/charging_icon.png"),
                                           linearStrokeCap: LinearStrokeCap.roundAll,
                                           progressColor: Colors.green,
                                         ),
                                       ),
                                       const Text("70% charged",
                                       style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 14),)
                                     ],
                                   ),
                                    const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        child: Text("Resting",
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),))
                                 ]
                             ),
                             Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Padding(
                                       padding: const EdgeInsets.symmetric(horizontal: 10),
                                       child: Image.asset("assets/images/blue_cart.png")),
                                   Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       const SizedBox(height: 25),
                                       const Text("6 person shuttle",
                                           style: TextStyle(
                                               fontWeight: FontWeight.bold, fontSize: 18)),
                                       Padding(
                                         padding:const EdgeInsets.symmetric(vertical: 5),
                                         child: Row(
                                             children:const [
                                               Text("5 minutes away",
                                                   style: TextStyle(
                                                       fontWeight: FontWeight.bold, fontSize: 14,color: Colors.grey)),
                                             ]
                                         ),
                                       ),
                                       Container(
                                         width: 117,
                                         height: 27,
                                         child: LinearPercentIndicator(
                                           //width: MediaQuery.of(context).size.width - 50,
                                           animation: true,
                                           lineHeight: 15.0,
                                           animationDuration: 2000,
                                           percent: 0.6,
                                           center: Image.asset("assets/icons/charging_icon.png"),
                                           linearStrokeCap: LinearStrokeCap.roundAll,
                                           progressColor: Colors.green,
                                         ),
                                       ),
                                       const Text("70% charged",
                                         style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 14),)
                                     ],
                                   ),
                                   const Padding(
                                       padding: EdgeInsets.symmetric(horizontal: 15),
                                       child: Text("Busy for\n 2 mins",
                                         style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),))
                                 ]
                             ),

                            const SizedBox(height: 10),
                            Container(
                              height: 40,
                              width: 188,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(primary: ButtonColor),
                                child: Text("Send"),
                              ),
                            ),
                  ],
                ),
                            ],
                          ),
                        ),
                      ),
                    ]
                ),

          ],
        ),
      ),
    );
  }
}