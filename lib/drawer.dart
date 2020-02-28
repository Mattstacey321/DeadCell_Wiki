import 'dart:ui';

import 'package:DeadCellWiki/config/AppConstrant.dart';
import 'package:flutter/material.dart';

class DrawerCategory extends StatelessWidget {
  const DrawerCategory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:MediaQuery.of(context).size.width/6,
      child: Drawer(
        elevation: 0,
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 0.2,sigmaY: 0.2
          ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        tileMode: TileMode.mirror,
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                        Color(0xff3C1C19),
                        Color(0xff381B19)
                      ])
                    ),
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              for (var e in AppContraint.listAssets.entries)
                InkWell(
                    onTap: () {
                      print(e.key);
                    },
                    child: Wrap(
                      direction: Axis.vertical,
                      runAlignment: WrapAlignment.center,
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "${e.value}",
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                          height: 80,
                          width: 80,
                          frameBuilder:
                              (context, child, frame, wasSynchronouslyLoaded) {
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
                        )
                        ,Text(e.key)
                      ],
                    ))
            ]),
          ),
        ),
      ),
    );
  }
}
