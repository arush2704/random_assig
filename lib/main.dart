import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Random Number',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Random Number'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   TextEditingController randromController1 = new TextEditingController();
   TextEditingController randromController2 = new TextEditingController();
   TextEditingController randromController3 = new TextEditingController();
   TextEditingController randromController4 = new TextEditingController();
   TextEditingController randromController5 = new TextEditingController();
   TextEditingController randromController6 = new TextEditingController();
   TextEditingController randromController7 = new TextEditingController();
   TextEditingController randromController8 = new TextEditingController();
   TextEditingController randromController9 = new TextEditingController();
   TextEditingController randromController10 = new TextEditingController();
   int random = 0;
   bool randomEnable1 = true;
   bool randomEnable2 = true;
   bool randomEnable3 = true;
   bool randomEnable4 = true;
   bool randomEnable5 = true;
   bool randomEnable6 = true;
   bool randomEnable7 = true;
   bool randomEnable8 = true;
   bool randomEnable9 = true;
   bool randomEnable10 = true;
   bool randomVisible1 = true;
   bool randomVisible2 = true;
   bool randomVisible3 = true;
   bool randomVisible4 = true;
   bool randomVisible5 = true;
   bool randomVisible6 = true;
   bool randomVisible7 = true;
   bool randomVisible8 = true;
   bool randomVisible9 = true;
   bool randomVisible10 = true;
   DateTime target,removeTarget;
   String timeLeft = "";
   bool running = true;
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
      target = DateTime.now().add(Duration(minutes: 5));
    executeTimer();
  }
   void executeTimer() async {
     while (running) {
       setState(() {
         timeLeft = DateTime.now().isAfter(target)
             ? '5 min expired. Restart app to reset.'
             : target.difference(DateTime.now()).inSeconds.toString();
       });
       await Future.delayed(Duration(seconds: 1), () {
         setState(() {
           if(DateTime.now().isBefore(target)){
           Random rnd = new Random();
           int min = 1, max = 1000;
           random = min + rnd.nextInt(max - min);
           //print("Random Number :- $random");
           if(random % 9 == 0)
           {
             if(randomEnable1) {
               randromController1.text = '$random';
               randomEnable1 = false;
                Future.delayed(Duration(seconds: 60), () {
                 randomVisible1 = false;
               });
               return;
             }
             if(randomEnable2) {
               randromController2.text = '$random';
               randomEnable2 = false;
               Future.delayed(Duration(seconds: 60), () {
                 randomVisible2 = false;
               });
               return;
             }
             if(randomEnable3) {
               randromController3.text = '$random';
               randomEnable3 = false;
               Future.delayed(Duration(seconds: 60), () {
                 randomVisible3 = false;
               });
               return;
             }
             if(randomEnable4) {
               randromController4.text = '$random';
               randomEnable4 = false;
               Future.delayed(Duration(seconds: 60), () {
                 randomVisible4 = false;
               });
               return;
             }
             if(randomEnable5) {
               randromController5.text = '$random';
               randomEnable5 = false;
               Future.delayed(Duration(seconds: 60), () {
                 randomVisible5 = false;
               });
               return;
             }
             if(randomEnable6) {
               randromController6.text = '$random';
               randomEnable6 = false;
               Future.delayed(Duration(seconds: 60), () {
                 randomVisible6 = false;
               });
               return;
             }
             if(randomEnable7) {
               randromController7.text = '$random';
               randomEnable7 = false;
               Future.delayed(Duration(seconds: 60), () {
                 randomVisible7 = false;
               });
               return;
             }
             if(randomEnable8) {
               randromController8.text = '$random';
               randomEnable8 = false;
               Future.delayed(Duration(seconds: 60), () {
                 randomVisible8 = false;
               });
               return;
             }
             if(randomEnable9) {
               randromController9.text = '$random';
               randomEnable9 = false;
               Future.delayed(Duration(seconds: 60), () {
                 randomVisible9 = false;
               });
               return;
             }
             if(randomEnable10) {
               randromController10.text = '$random';
               randomEnable10 = false;
               Future.delayed(Duration(seconds: 60), () {
                 randomVisible10 = false;
               });
               return;
             }
           }
           }
         });
       });
     }
   }
   @override
   void dispose() {
     running = false;
     super.dispose();
   }

   @override
   void onDeactivate() {
     super.deactivate();
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Random Number : $random || Remaining Time : "+timeLeft +" Seconds",
                    style: TextStyle(
                      color: Colors.green
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    child: TextField(
                      enabled : randomEnable1,
                      controller: randromController1,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Ramdon Number 1",
                        labelText: 'Ramdon Number 1',
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red[300], width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    visible: randomVisible1,
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    child: TextField(
                      enabled : randomEnable2,
                      controller: randromController2,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Ramdon Number 2",
                        labelText: 'Ramdon Number 2',
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red[300], width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    visible: randomVisible2,
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    child: TextField(
                      enabled : randomEnable3,
                      controller: randromController3,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Ramdon Number 3",
                        labelText: 'Ramdon Number 3',
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red[300], width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    visible: randomVisible3,
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    child: TextField(
                      enabled : randomEnable4,
                      controller: randromController4,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Ramdon Number 4",
                        labelText: 'Ramdon Number 4',
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red[300], width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    visible: randomVisible4,
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    child: TextField(
                      enabled : randomEnable5,
                      controller: randromController5,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Ramdon Number 5",
                        labelText: 'Ramdon Number 5',
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red[300], width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    visible: randomVisible5,
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    child: TextField(
                      enabled : randomEnable6,
                      controller: randromController6,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Ramdon Number 6",
                        labelText: 'Ramdon Number 6',
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red[300], width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    visible: randomVisible6,
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    child: TextField(
                      enabled : randomEnable7,
                      controller: randromController7,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Ramdon Number 7",
                        labelText: 'Ramdon Number 7',
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red[300], width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    visible: randomVisible7,
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    child: TextField(
                      enabled : randomEnable8,
                      controller: randromController8,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Ramdon Number 8",
                        labelText: 'Ramdon Number 8',
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red[300], width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    visible: randomVisible8,
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    child: TextField(
                      enabled : randomEnable9,
                      controller: randromController9,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Ramdon Number 9",
                        labelText: 'Ramdon Number 9',
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red[300], width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    visible: randomVisible9,
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    child: TextField(
                      enabled : randomEnable10,
                      controller: randromController10,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                        hintText: "Ramdon Number 10",
                        labelText: 'Ramdon Number 10',
                        border: OutlineInputBorder(
                            borderSide:
                            BorderSide(color: Colors.red[300], width: 32.0),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                    visible: randomVisible10,
                  ),

                ],
              ),
            ),
          ),
        ),
    );
  }
}
