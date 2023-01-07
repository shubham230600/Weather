import 'package:flutter/material.dart';
import 'package:weather/wapi.dart';
import 'addn.dart';
import 'new.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  wapi c=wapi();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    c.getCurrentWeather("Georgia");
  }
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
  backgroundColor: Colors.lightBlue,
  appBar: AppBar(
    backgroundColor: Colors.white,
  title: Text("weather app",style: TextStyle(color: Colors.black),
  
  ),
  centerTitle: true,
  leading: IconButton(onPressed: (){}, 
  icon: Icon(Icons.menu),
  color: Colors.black,),

  ),
  body: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    new1(Icons.wb_shade_rounded,"26.3","West Bengal"),
    SizedBox(
      height: 20.0,
    ),
    Text("Additional Info",style: TextStyle(fontSize: 24.0,color: Colors.green),),
Divider(),
SizedBox(
  height: 20.0,
),
addn1("24","2","1014","24.6")
  ],)
  );
  }
}
