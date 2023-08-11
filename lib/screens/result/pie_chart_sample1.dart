import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduationupdate/api_helper/adfruit_api_helper.dart';
import 'package:lottie/lottie.dart';

import '../../colors/app_colors.dart';
import '../../models/indicator.dart';
import 'chat/chat_Screen.dart';

class PieChartSample1 extends StatefulWidget {
  const PieChartSample1({super.key});

  @override
  State<StatefulWidget> createState() => PieChartSample1State();
}

class PieChartSample1State extends State {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
        Column(
          children: [
            Lottie.asset('images/staff.json'),
            Text('Staff Chat',style:

            TextStyle(fontSize: 30,
            color: Colors.grey,
              fontWeight: FontWeight.bold
            )

              ,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(double.infinity,50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push (context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                  }, child: Text('View',style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
    ) ;
  }

}