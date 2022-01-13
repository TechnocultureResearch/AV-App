import 'package:av_model/Screens/Satt%20UI/Send%20shuttle/send_shuttle.dart';
import 'package:av_model/Screens/Satt%20UI/Track%20shuttle/track_shuttle.dart';
import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:search_choices/search_choices.dart';
import 'package:fl_chart/fl_chart.dart';

class DashboardBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardBody();
}

class _DashboardBody extends State<DashboardBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 10),
          _shuttleList1(),


          const SizedBox(height: 20),
          _ShuttleList2(),

          const SizedBox(height: 20),
          FleetManagement(),


          Padding(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 25),
            child: Container(
              height: 217 ,
              width: 214,
              decoration: BoxDecoration(
                color: ContainerWhite,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    child: Text("View reviews",
                    style: TextStyle(fontSize: 16),),
                  ),

                  Container(
                    height: 140,
                      width: 190,
                      child:const  _BarChart()),
                ],
              ),

            ),
          ),


        ],
      ),
    );
  }
}


Widget _shuttleList1(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
        children: [
          const SizedBox(width: 15),
          //--------------------------------------------------------------- Container 1-
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
                                style: TextStyle(color: Colors.white)),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          ),
          //----------------------------------------------------------- container 2
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
                        const SizedBox(height: 25),
                        const Text("Red Shuttle",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        Padding(
                          padding:const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                              children:[
                                Text("25",
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
                                style: TextStyle(color: Colors.white)),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          ),
          //-----------------------------------------------------------
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 10),
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
                        padding:const EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset("assets/images/blue_cart.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 25),
                        const Text("Green Shuttle",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                              children:[
                                const Text("25",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 32)),
                                Column(
                                    children:const[
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
                                style: TextStyle(color: Colors.white)),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          ),





        ]),
  );
}

Widget  _ShuttleList2(){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
        children: [
          const SizedBox(width: 15),
          //--------------------------------------------------------------- Container 1-
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
                        const SizedBox(height: 25),
                        const Text("Red Shuttle",
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
                                       SizedBox(height: 6),
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
                                style: TextStyle(color: Colors.white)),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          ),
          //----------------------------------------------------------- container 2
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
                                    children:const[
                                      SizedBox(height: 6),
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
                                style: TextStyle(color: Colors.white)),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          ),
          //-----------------------------------------------------------
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
                        padding:const EdgeInsets.symmetric(horizontal: 20),
                        child: Image.asset("assets/images/red_cart.png.png")),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 25),
                        const Text("Red Shuttle",
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
                                    children:const[
                                      SizedBox(height: 6),
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
                                style: TextStyle(color: Colors.white)),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          ),
        ]),
  );
}

class FleetManagement extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _FleetManagement();

}

class _FleetManagement extends State<FleetManagement>{
  String  ShuttleValue;
  String SendtoValue;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          const SizedBox(width: 25),
          Container(
            height: 302,
            width: 194,
            decoration: BoxDecoration(
              color: ContainerWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Manage Fleet",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                  Container(
                    width: 174,
                    height: 252,
                    color: ContainerWhite,
                    //child:

                  ),
                ],
              ),
            ),
          ),
          //--------------------------------------------
          const SizedBox(width: 10),
          Container(
            height: 302,
            width: 154,
            decoration: BoxDecoration(
              color: ContainerWhite,
              borderRadius: BorderRadius.circular(10),
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                  child: Text("Select Shuttle:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                ),
                Center(
                  child: Container(
                    height: 60,
                    width: 134,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child:SearchChoices.single(
                      underline: DropdownButtonHideUnderline(child: Container()),
                      displayClearIcon: false,
                      padding: 0,
                      items:<String>['One', 'Two', 'Free', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: ShuttleValue,
                      hint:const Padding(
                          padding:EdgeInsets.symmetric(horizontal: 2,vertical: 10) ,
                          child:Text("Select Shuttle")),
                      searchHint: "Select Shuttle",
                      onChanged:  (String newValue) {
                        setState(() {
                          ShuttleValue = newValue;
                        });
                      },
                      isExpanded: true,
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                  child: Text("Send to:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                ),

                Center(
                  child: Container(
                    height: 60,
                    width: 144,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child:SearchChoices.single(
                      underline: DropdownButtonHideUnderline(child: Container()),
                      displayClearIcon: false,
                      padding: 2,
                      items:<String>['Main Gate', 'Reception', 'Golf Court', 'Restaurant']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: SendtoValue,
                      hint: const Padding(
                          padding:EdgeInsets.symmetric(horizontal: 2,vertical: 10) ,
                          child:Text("Select Location")),
                      searchHint: "Select one",
                      onChanged:  (String newValue) {
                        setState(() {
                          SendtoValue = newValue;
                        });
                      },
                      isExpanded: true,
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                Center(
                  child: Container(
                    width: 133,
                    height: 39,
                    decoration: BoxDecoration(
                      color: ContainerWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push( context, MaterialPageRoute(
                            builder: (context) =>  SendShuttle()));

                      },
                      style: ElevatedButton.styleFrom(primary: ButtonColor),
                      child: const Text("Send shuttle"),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Center(
                  child: Container(
                    width: 133,
                    height: 39,
                    decoration: BoxDecoration(
                      color: ContainerWhite,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push( context, MaterialPageRoute(
                            builder: (context) =>  TrackShuttle()));
                      },
                      style: ElevatedButton.styleFrom(primary: ButtonColor),
                      child: const Text("Track shuttle"),
                    ),
                  ),
                ),


              ],
            ),
          ),


        ],
      ),
    );

  }
}


class _BarChart extends StatelessWidget {
  const _BarChart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        alignment: BarChartAlignment.spaceAround,
        maxY: 20,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: false,
    touchTooltipData: BarTouchTooltipData(
      tooltipBgColor: Colors.transparent,
      tooltipPadding: const EdgeInsets.all(0),
      tooltipMargin: 8,
      getTooltipItem: (
          BarChartGroupData group,
          int groupIndex,
          BarChartRodData rod,
          int rodIndex,
          ) {
        return BarTooltipItem(
          rod.y.round().toString(),
          const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    ),
  );

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: SideTitles(
      showTitles: true,
      getTextStyles: (context, value) => const TextStyle(
        color: Color(0xff7589a2),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      margin: 20,
      getTitles: (double value) {
        switch (value.toInt()) {
          case 0:
            return '1*';
          case 1:
            return '2*';
          case 2:
            return '3*';
          case 3:
            return '4*';
          case 4:
            return '5*';
          default:
            return '';
        }
      },
    ),
    leftTitles: SideTitles(showTitles: false),
    topTitles: SideTitles(showTitles: false),
    rightTitles: SideTitles(showTitles: false),
  );

  FlBorderData get borderData => FlBorderData(
    show: false,
  );

  List<BarChartGroupData> get barGroups => [
    BarChartGroupData(
      x: 0,
      barRods: [
        BarChartRodData(
            width:20,y: 8, colors: [Colors.grey])
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 1,
      barRods: [
        BarChartRodData(
            width:20,y: 10, colors: [Colors.grey])
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(
            width:20,y: 15, colors: [Colors.grey])
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(
            width:20,y: 25, colors: [Colors.pinkAccent])
      ],
      showingTooltipIndicators: [0],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(
            width:20,y: 18, colors: [Colors.grey])
      ],
      showingTooltipIndicators: [0],
    ),
  ];
}

