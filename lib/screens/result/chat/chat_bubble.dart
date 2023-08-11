import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../colors/app_colors.dart';


class ChatBubble  extends StatelessWidget {
  ChatBubble ({Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
      child: Container(

        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        decoration: BoxDecoration(
          color: AppColors.contentColorBlue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
            topRight: Radius.circular(30),

          ),
        ),
        child: Text('Message' ,style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: 'Ubuntu',

        ),),
      ),
    );
  }
}
