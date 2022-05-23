import 'package:flutter/material.dart';
import 'package:poc_project/util/const.dart';



class DesktopLayout extends StatefulWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final widthUnit = width/100;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      //appBar: AppBar(title: Text("Tab")),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("This is a PoC Project",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: (widthUnit * 9 < 55)? widthUnit * 9 : 55,
                  ),),
                Container(
                    padding: EdgeInsets.symmetric(vertical: height * 0.05),
                    width: width * 0.4,
                    child: Text(Lorem.toString(),style: const TextStyle(

                      fontSize: 18,
                    ),))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: width* 0.2,
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

                ),
              ],
            ),
          ],
        )
    );
  }
}

