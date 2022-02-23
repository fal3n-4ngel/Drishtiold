import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  double progress = 0;
  currentProgressColor() {
    if (progress >= 0.6 && progress < 0.8) {
      return Colors.orange;
    }
    if (progress >= 0.8) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  @override
  String user = 'user';
  String location = 'Location1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drishti'), actions: [
        IconButton(
          icon: const Icon(
            Icons.notifications,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.search,
          ),
          onPressed: () {},
        ),
      ]),
      backgroundColor: const Color(0xffffffff),
      //
      //
      //
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              child: Text(''),
            ),
            //
            Container(
                padding: const EdgeInsets.all(10.0),
                width: 350.0,
                height: 150.0,
                decoration: BoxDecoration(
                    color: const Color(0xffeeeeee),
                    borderRadius: BorderRadius.circular(24.0)),
                child: Column(children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome $user',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 30,
                          color: Colors.black),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '\n No Alerts Found',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 21,
                          color: Colors.black),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ])),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              child: Text(''),
            ),
            //
            //
            //
            Container(
                padding: const EdgeInsets.all(10.0),
                width: 350.0,
                height: 350.0,
                decoration: BoxDecoration(
                    color: const Color(0xffeeeeee),
                    borderRadius: BorderRadius.circular(24.0)),
                child: Column(children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '''Statistics - $location''',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          fontSize: 35,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      ''' ''',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                      color: Color(0xffeeeeee),
                      alignment: Alignment.center,
                      child: CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 10.0,
                        animation: true,
                        percent: 75 / 100,
                        center: Text(
                          (75).toString() + "%",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        backgroundColor: Colors.white38,
                        circularStrokeCap: CircularStrokeCap.round,
                        progressColor: Colors.black38,
                      )),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      ''' ''',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '''
Active Incidents :100   
Fixing Incidents :75
Pending Fixes    :25
Fixed Incidents  :50''',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 25,
                          color: Colors.black),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ])),
          ],
        ),
      ),
      //
      //
      //
      //
    );
  }
}
