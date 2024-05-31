import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wellness_warrior/Screens/break.dart';
import 'package:wellness_warrior/provider/timer.dart';

class WorkOutDetails extends StatelessWidget {
  const WorkOutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TimerProviderSec>(
      create: (context) => TimerProviderSec(context),
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/images/yoga1.gif'),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Anulom Vilom",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
                    ),
                  ),
                  Center(
                    child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.pink),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "00",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(" : ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold)),
                            Consumer<TimerProviderSec>(
                                builder: (context, myModel, child) {
                              return Text(myModel.countdown.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 45,
                                      fontWeight: FontWeight.bold));
                            }),
                          ],
                        )),
                  ),
                  Consumer<TimerProviderSec>(
                    builder: (context, model, child) => ElevatedButton(
                      onPressed: () {
                        model.show();
                      },
                      child: Text(
                        "PAUSE",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Previous",
                              style: TextStyle(color: Colors.pink.shade600),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Next",
                              style: TextStyle(color: Colors.pink.shade600),
                            ))
                      ],
                    ),
                  ),
                  Divider(),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Next : Anulom Vilom",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Consumer<TimerProviderSec>(
                builder: (context, model, child) => Visibility(
                    visible: model.isVisible,
                    child: Container(
                      color: Colors.black.withOpacity(0.90),
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "PAUSE",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 45,
                                color: Colors.white),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "Restart",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.pink.shade800),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Text(
                              "   Quit   ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.pink.shade800),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {model.hide();},
                            child: Text(
                              "Resume",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.pink.shade800),
                            ),
                          ),
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}

class TimerProviderSec with ChangeNotifier {
  int countdown = 5;
  bool isVisible = false;

  TimerProviderSec(context) {
    timer(context);
  }

  void timer(context) async {
    Timer.periodic(Duration(seconds: 1), (timer) {
      countdown--;
      if (countdown == 0) {
        timer.cancel();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => BreakTime()));
      }

      notifyListeners();
    });
  }

  void show() {
    isVisible = true;
    notifyListeners();
  }

  void hide() {
    isVisible = false;
    notifyListeners();
  }
}
