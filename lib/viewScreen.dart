import 'package:flutter/material.dart';
import 'package:webapp/title.dart';
import 'package:webapp/drawer.dart';
import 'package:webapp/profile.dart';
import 'package:webapp/history.dart';
class ViewPage extends StatefulWidget{
  @override
  _ViewPage createState() => _ViewPage();
}
class _ViewPage extends State<ViewPage>{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body:Container(
            child:SingleChildScrollView(
                child:Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children:<Widget>[
                      title(size,'Status Page'),
                      Row(
                        children: <Widget>[
                          drawerbox(size),
                         // ProfilePage(),
                          //historyBox(size),

                        ],
                      )
                    ]
                ))
        )
    );
  }
}