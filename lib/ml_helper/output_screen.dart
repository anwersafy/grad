import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graduationupdate/colors/app_colors.dart';
class OutputScreen extends StatelessWidget {
  final output;
  final image;
  const OutputScreen({Key? key, this.output, this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBackground,
      appBar: AppBar(title: Text('Result'),
      backgroundColor: AppColors.pageBackground
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            //Image.file(File(image!.path)),
            Text(output[0]['label'],

              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold
                    ,
              ),
            ),
            SizedBox(height: 20,),
            Image.asset('images/letter.png',width:200,height: 200,),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(20),
                ),
                child:SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                      child: Text('Des',style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                          ,
                    ),
                    ),
                  ),
                ),),
            )



          ],
        ),
      ),
    );
  }
}