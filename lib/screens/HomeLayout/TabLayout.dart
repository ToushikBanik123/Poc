import 'package:flutter/material.dart';
import 'package:poc_project/util/const.dart';


class TabLayout extends StatefulWidget {
  const TabLayout({Key? key}) : super(key: key);

  @override
  State<TabLayout> createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final widthUnit = width/100;
    return Scaffold(
      //appBar: AppBar(title: Text("Tab")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width,
          ),
          Center(
            child: Text("This is a PoC Project",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: (widthUnit * 9 < 55)? widthUnit * 9 : 55,
              ),),
          ),
          Container(
              padding: EdgeInsets.all(width * 0.1),
              alignment: Alignment.center,
              width: width,
              child: Text(Lorem.toString(),textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: (widthUnit * 4 < 20)? widthUnit * 4 : 20,
                ),)),
          Container(
            width: width* 0.3,
            height: (width * 0.07<60)?width * 0.07 : 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(width* 0.05),
            ),
            child: Center(child: Text("Join",textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: (widthUnit * 4 < 20)? widthUnit * 4 : 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            )),

          )
        ],
      ),
    );
  }
}