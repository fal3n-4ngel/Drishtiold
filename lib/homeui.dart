import 'package:flutter/material.dart';

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
  String user = 'Adi';
  String location = 'Varkala';
  String data = '''(II) Cliff , Varkala [ Snapped Line]
(I) Edava, Varkala [Broken Pipe]
(I) Kappil [Fallen Tree]
(I) Nalanchira [Broken Pipe]
(I) Kappil [Broken Pipe]''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      //
      //
      //
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
        child: Column(
          children: [
            Container(
                width: 548,
                height: 40,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        'Drishti \n',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Comfortaa',
                            fontSize: 36,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                ])),
            Container(
                padding: EdgeInsets.only(top: 20),
                width: 329,
                height: 65,
                child: Stack(children: <Widget>[
                  Positioned(
                      child: Text(
                    'Welcome $user',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Comfortaa',
                        fontSize: 32,
                        fontWeight: FontWeight.w200),
                  )),
                ])),
            Container(
                // USER DATA
                padding: EdgeInsets.only(top: 0),
                width: 340,
                height: 97,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 181, 182, 184),
                  borderRadius: BorderRadius.all(
                      Radius.elliptical(87.91732788085938, 88)),
                ),
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 4.5,
                      left: 2.5,
                      child: Container(
                          width: 97.91732788085938,
                          height: 88,
                          child: Stack(children: <Widget>[
                            Positioned(
                                top: 5.185039043426514,
                                left: 12.184823989868164,
                                child: //Mask holder Template
                                    Container(
                                        width: 77.77375030517578,
                                        height: 77.77375030517578,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 70.0,
                                          child: CircleAvatar(
                                            backgroundImage:
                                                AssetImage('assets/1.png'),
                                            radius: 37.0,
                                          ),
                                        ))),
                          ]))),
                  Positioned(
                      top: 25,
                      left: 154,
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Abhaya Libre Medium',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 25,
                      left: 222,
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Abhaya Libre Medium',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 25,
                      left: 286,
                      child: Text(
                        '0',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Abhaya Libre Medium',
                            fontSize: 16,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 53,
                      left: 133,
                      child: Text(
                        'Reports',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'NovaSlim',
                            fontSize: 16,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 53,
                      left: 206,
                      child: Text(
                        'Badges',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'NovaSlim',
                            fontSize: 16,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 53,
                      left: 276,
                      child: Text(
                        'Rank',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'NovaSlim',
                            fontSize: 16,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                ])),
            Container(
                // ALERTS
                padding: EdgeInsets.only(top: 30),
                width: 330,
                height: 498,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 330,
                          height: 418,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                            color: Color.fromARGB(255, 181, 182, 184),
                          ))),
                  Positioned(
                      top: 16.101266860961914,
                      left: 15.855855941772461,
                      child: Text(
                        'Alerts',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Montaga',
                            fontSize: 36,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      )),
                  Positioned(
                      top: 58.55696105957031,
                      left: 35.03063049316406,
                      child: Text(
                        '''................................................ 
$data \n
              --End Of Stats--
..................................................''',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'Montaga',
                            fontSize: 18,
                            letterSpacing:
                                0.7 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 2),
                      )),
                ]))
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
