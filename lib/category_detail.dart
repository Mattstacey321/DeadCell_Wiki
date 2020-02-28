import 'package:flutter/material.dart';

class CategoryDetail extends StatefulWidget {
  final String tag, categoryTitle, asset;
  CategoryDetail({this.tag, this.categoryTitle, this.asset});
  @override
  _CategoryDetailState createState() => _CategoryDetailState();
}

class _CategoryDetailState extends State<CategoryDetail> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: widget.tag,
        child: Scaffold(
          body: SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(widget.asset),
                        Text(
                          widget.tag,
                          style:
                              TextStyle(fontSize: 20, color: Color(0xffD1394E)),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        ExpansionTile(
                          title: Text(
                            "Gear Level",
                            style: TextStyle(color: Color(0xffD1394E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                          ),
                          children: <Widget>[
                            Text("asd"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ExpansionTile(
                          title: Text("Gear Quality",
                              style: TextStyle(color: Color(0xffD1394E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                          children: <Widget>[
                            Text("asd"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ExpansionTile(
                          title: Text("Gear Power",
                              style: TextStyle(color: Color(0xffD1394E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                          children: <Widget>[
                            Text("asd"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ExpansionTile(
                          title: Container(
                              decoration: BoxDecoration(),
                              child: Text("Gear Variants",
                                  style: TextStyle(
                                      color: Color(0xffD1394E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20))),
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                       child: Wrap(
                                         direction: Axis.vertical,
                                         runSpacing: 10,
                                        children: <Widget>[
                                          Text("Colorless Items",style: TextStyle(fontSize: 18),),
                                          Text("Colorless items, which are found in Cursed Chests, scale according to your highest stat. In addition, they are dynamically scrolled. This means that if your highest stat at the time is Brutality, the colorless item is Brutality. If later on your highest stat is Tactics, your item will now scale with Tactics. For example, a Colorless Torch, which is a pure Brutality item, scales with Survival if you have higher Survival than Brutality. Colorless items are marked with a white color, rather than the colors of the base item's scaling stats. As with all ++ quality items,",style: TextStyle(fontSize: 18,),overflow: TextOverflow.ellipsis,),
                                          Text("Legendary Items",style: TextStyle(fontSize: 18))
                                        ],
                                      )),
                                  
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ExpansionTile(
                          title: Text("Gear Quality",
                              style: TextStyle(color: Color(0xffD1394E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                          children: <Widget>[
                            Text("asd"),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
