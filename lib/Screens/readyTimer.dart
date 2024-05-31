import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wellness_warrior/Screens/workOutDetails.dart';
import 'package:wellness_warrior/provider/timer.dart';

class ReadyTimer extends StatelessWidget {
  const ReadyTimer({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerProvider>(
      create: (context) => TimerProvider(context),
      child: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/2-100,),
                Text("Are You Ready ?",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w800),),
                Consumer<TimerProvider>(builder: (context, timer, child) {
                  return Text(timer.countdown.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 43),);
                }),
                Spacer()
                ,
                Divider(),

                Align(alignment: Alignment.bottomLeft,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Next : Anulom Vilom",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                ),)
              ],
            ),
          ),
        ),

      ),
    );
  }
}

class TimerProvider with ChangeNotifier {
  int countdown = 5;

  TimerProvider(context) {
    myTimer(context);
  }



  void myTimer(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      if(countdown == 0) {
        timer.cancel();
        Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkOutDetails()));
        print("time end");
      }
      notifyListeners();
    });
  }
}

