import 'package:av_model/Widgets/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:search_choices/search_choices.dart';

class DashboardBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardBody();
}

class _DashboardBody extends State<DashboardBody> {
  String  dropdownValue;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: [
              const SizedBox(width: 15),
              //--------------------------------------------------------------- Container 1-
                  Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
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
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset("assets/images/blue_cart.png")),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 25),
                          const Text("Green Shuttle",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              children:[
                                Text("25",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 32)),
                                Column(
                                  children:[
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
                            center: Text("30%",
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
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
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Image.asset("assets/images/red_cart.png.png")),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 25),
                                const Text("Red Shuttle",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16)),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                      children:[
                                        Text("25",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 32)),
                                        Column(
                                            children:[
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
                                    center: Text("60%",
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
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
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Image.asset("assets/images/blue_cart.png")),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 25),
                                const Text("Green Shuttle",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16)),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                      children:[
                                        Text("25",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 32)),
                                        Column(
                                            children:[
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
                                    center: Text("30%",
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



            ]),
          ),

          //--------------------------------------------------------------------
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: [
                  const SizedBox(width: 15),
                  //--------------------------------------------------------------- Container 1-
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
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
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Image.asset("assets/images/red_cart.png.png")),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 25),
                                const Text("Red Shuttle",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16)),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                      children:[
                                        Text("25",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 32)),
                                        Column(
                                            children:[
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
                                    center: Text("60%",
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
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
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Image.asset("assets/images/blue_cart.png")),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 25),
                                const Text("Green Shuttle",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16)),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                      children:[
                                        Text("25",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 32)),
                                        Column(
                                            children:[
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
                                    center: Text("30%",
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
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
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Image.asset("assets/images/red_cart.png.png")),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 25),
                                const Text("Red Shuttle",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 16)),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Row(
                                      children:[
                                        Text("25",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 32)),
                                        Column(
                                            children:[
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
                                    center: Text("60%",
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
          ),
          //--------------------------------------------------------------------
          const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                const SizedBox(width: 10),
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
                        const SizedBox(height: 40),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          child: Text("Select Shuttle:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                        Container(
                          height: 70,
                          width: 144,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45, width: 0),
                          ),

                          child: /*SearchChoices.single(
                            icon: const Icon(Icons.keyboard_arrow_down_sharp,size:30),
                            isExpanded: true,
                            hint: "Search here",
                            //value: selectItemCostCenter,
                            displayClearIcon: false,
                            //onChanged: onDataChange3,
                            items: snapshot?.data
                                ?.map<DropdownMenuItem<ItemCostCenter>>((e) {
                              return DropdownMenuItem<ItemCostCenter>(
                                value: e,
                                child: Text(e.strName),
                              );
                            })?.toList() ??[],
                          ),*/
                          SearchChoices.single(
                            displayClearIcon: false,
                            items:<String>['One', 'Two', 'Free', 'Four']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            value: dropdownValue,
                            hint: "Select one",
                            searchHint: "Select one",
                            onChanged:  (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            isExpanded: true,
                          ),
                        ),

                      ],
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
