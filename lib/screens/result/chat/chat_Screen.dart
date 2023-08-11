import 'package:flutter/material.dart';
import 'package:graduationupdate/colors/app_colors.dart';

import 'chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: AppColors.pageBackground,
      appBar: AppBar(
        title: Text('Staff Chat'),
        centerTitle: true,
        backgroundColor:  AppColors.pageBackground,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ChatBubble(),
            )  ,
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.send,color: Colors.white,),
                  hintText: 'Enter your message',
                  hintStyle: TextStyle(color: AppColors.mainTextColor3),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.borderColor),

                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
