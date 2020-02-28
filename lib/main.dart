import 'package:DeadCellWiki/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.indigo,
        fontFamily: "vcr-osd",
        accentColor: Color((0xffF9CF87)),
       
        textTheme:
            TextTheme(
              
              bodyText2: TextStyle(color: Color(0xffF9CF87))).apply(),
        backgroundColor: Color(0xff191919),
        primarySwatch: Colors.indigo,
        
      ),
      theme: ThemeData(
        fontFamily: "vcr-osd",
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
