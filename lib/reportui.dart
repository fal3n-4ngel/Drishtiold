import 'package:flutter/material.dart';

class reportui extends StatefulWidget {
  reportui({Key? key}) : super(key: key);

  @override
  State<reportui> createState() => _MyHomePage();
}

class _MyHomePage extends State<reportui> {
  @override
  String user = 'user';
  int _index = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//
//
//
//
  final myloc = TextEditingController();
  final myint = TextEditingController();
  final mytyp = TextEditingController();
  final mydet = TextEditingController();
  final myrem = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myloc.dispose();
    myint.dispose();
    mytyp.dispose();
    mydet.dispose();
    myrem.dispose();
    super.dispose();
  }
  //
  //
  //

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(100, 50),
    padding: EdgeInsets.symmetric(horizontal: 10),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
  );

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
                height: 550.0,
                decoration: BoxDecoration(
                    color: const Color(0xffeeeeee),
                    borderRadius: BorderRadius.circular(24.0)),
                child: Column(children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'REPORT',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 30,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 11,
                          color: Colors.black),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Report Screen \n',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 21,
                          color: Colors.black),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.my_location),
                        hintText: 'Location',
                        labelText: 'Location*',
                      ),
                      controller: myloc),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.ac_unit),
                        hintText: 'Intensity',
                        labelText: 'Intensity*',
                      ),
                      controller: myint),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.cloud),
                        hintText: 'Type',
                        labelText: 'Type*',
                      ),
                      controller: mytyp),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.details),
                        hintText: 'Details',
                        labelText: 'Details*',
                      ),
                      controller: mydet),
                  TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.remember_me),
                        hintText: 'Remarks',
                        labelText: 'Remarks*',
                      ),
                      controller: myrem),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 11,
                          color: Colors.black),
                      textAlign: TextAlign.right,
                    ),
                  ),
                  ElevatedButton(
                    style: raisedButtonStyle,
                    onPressed: () {
                      print(myrem.text);
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 16,
                          color: Colors.black87),
                    ),
                  )
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
