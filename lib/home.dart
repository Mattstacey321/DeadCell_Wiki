import 'dart:ui';
import 'package:DeadCellWiki/category_detail.dart';
import 'package:DeadCellWiki/config/AppConstrant.dart';
import 'package:DeadCellWiki/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            drawer: DrawerCategory(),
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background/background.png'),
                      fit: BoxFit.cover)),
              child: Stack(alignment: Alignment.topCenter, children: <Widget>[
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                  child: Container(
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset('assets/icons/logo.png'),
                              Text(
                                "Wiki",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 40,
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.center,
                        runAlignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          for (var e in AppContraint.listAssets.entries)
                            InkWell(
                              onTap: () {
                                switch (e.key) {
                                  case "Gear":
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CategoryDetail(
                                                  tag: e.key,
                                                  categoryTitle: e.key,
                                                  asset: e.value,
                                                )));
                                    break;
                                  case "Biomes":
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CategoryDetail(
                                                  tag: e.key,
                                                  categoryTitle: e.key,
                                                  asset: e.value,
                                                )));
                                    break;
                                     case "Enemies":
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CategoryDetail(
                                                  tag: e.key,
                                                  categoryTitle: e.key,
                                                  asset: e.value,
                                                )));
                                    break;
                                     case "NPCs":
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CategoryDetail(
                                                  tag: e.key,
                                                  categoryTitle: e.key,
                                                  asset: e.value,
                                                )));
                                    break;
                                     case "Outfit":
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CategoryDetail(
                                                  tag: e.key,
                                                  categoryTitle: e.key,
                                                  asset: e.value,
                                                )));
                                    break;
                                     case "Pickups":
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CategoryDetail(
                                                  tag: e.key,
                                                  categoryTitle: e.key,
                                                  asset: e.value,
                                                )));
                                    break;
                                     case "Rune":
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CategoryDetail(
                                                  tag: e.key,
                                                  categoryTitle: e.key,
                                                  asset: e.value,
                                                )));
                                    break;
                                    
                                  default: return null;
                                }
                                print(e.key);
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "${e.value}",
                                    fit: BoxFit.cover,
                                    frameBuilder: (context, child, frame,
                                        wasSynchronouslyLoaded) {
                                      if (wasSynchronouslyLoaded) {
                                        return child;
                                      }
                                      return AnimatedOpacity(
                                        child: child,
                                        opacity: frame == null ? 0 : 1,
                                        duration: const Duration(seconds: 1),
                                        curve: Curves.easeOut,
                                      );
                                    },
                                  ),
                                  Text(
                                    e.key.toUpperCase(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                      color: Color(0xffF7735C),
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 3.0,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                        Shadow(
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 5.0,
                                          color: Color.fromARGB(125, 0, 0, 255),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: screenSize.width,
                            decoration: BoxDecoration(
                                color: Color(0xff3D2118).withOpacity(0.8),
                                border: Border.all(color: Color(0xff580E25))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("PATCH NOTE"),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            child: Text("Display here"),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ]),
            )));
  }
}
