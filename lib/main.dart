import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      appBar: AppBar(
          backgroundColor : const Color(0xFFD83457),
          centerTitle: true,
          title: const Text("RECIPE - APP",style: TextStyle(color: Colors.white,fontSize: 25),)
      ),
      body: ListView(
        children: [
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/american.jpg'),
                    fit: BoxFit.cover),
              ),
             /* child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("AMERICAN",textAlign: TextAlign.center),
              ),*/
            ),
            // ),
            onPressed: () {
              //print('Tapped');
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/chinese.jpg'),
                    fit: BoxFit.cover),
              ),
              /*child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("CHINESE"),
              ),*/
            ),
            // ),
            onPressed: () {
              //print('Tapped');
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/french.jpg'),
                    fit: BoxFit.cover),
              ),
              /*child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("FRENCH"),
              ),*/
            ),
            // ),
            onPressed: () {
              //print('Tapped');
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/german.jpg'),
                    fit: BoxFit.cover),
              ),
              /*child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("GERMAN"),
              ),*/
            ),
            // ),
            onPressed: () {
              //print('Tapped');
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/indian.jpg'),
                    fit: BoxFit.fitWidth),
              ),
              /*child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("INDIAN",textAlign: TextAlign.center,),
              ),*/
            ),
            // ),
            onPressed: () {
              //print('Tapped');
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/italian.jpg'),
                    fit: BoxFit.cover),
              ),
              /*child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("ITALIAN"),
              ),*/
            ),
            // ),
            onPressed: () {
              //print('Tapped');
            },
          ),
          const SizedBox(height: 35,),
          MaterialButton(
            padding: const EdgeInsets.all(8.0),
            textColor: Colors.green,
            splashColor: Colors.blueAccent,
            //elevation: 8.0,
            child: Container(
              width:450,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/mediterranean.jpg'),
                    fit: BoxFit.cover),
              ),
              /*child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("MEDITERRANEAN"),
              ),*/
            ),
            // ),
            onPressed: () {
              //print('Tapped');
            },
          ),
          const SizedBox(height: 35,),
        ],

      ),
    );
  }
}
