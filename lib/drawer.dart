import 'package:flutter/material.dart';

final _style = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 25.0,
  fontFamily: 'CM Sans Cherif',
  color:Colors.white,

);

final _substyle = TextStyle(
  fontFamily: 'CM Sans cherif',

  fontSize: 20.0,
  color:Colors.white,
);




Widget drawerbox (Size size) {
  return Container(
      width:size.width/5,
      height: size.height,
      color:Colors.deepPurple,
      child:Column(
        children: <Widget>[
          Container(
            height:size.height/4,
            child:Image.asset(
                'image/intro.png',fit:BoxFit.contain
            ),),
          Container(
              height:size.height - size.height/4,
              child:ListView(
                padding: const EdgeInsets.all(10.0),

                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.home,size: 20.0,color:Colors.white),

                    title: Text('Home',style:_substyle),
                    trailing: Icon(Icons.arrow_forward_ios,size:20.0,color:Colors.white),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.scatter_plot,size: 20.0,color:Colors.white),

                    title: Text('Status',style:_substyle),
                    trailing: Icon(Icons.arrow_forward_ios,size:20.0,color:Colors.white),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.verified_user,size: 20.0,color:Colors.white),


                    title: Text('Verify',style:_substyle),
                    trailing: Icon(Icons.arrow_forward_ios,size:20.0,color:Colors.white),

                    onTap: (){ print("Verify Pressed");},
                  ),
                  ListTile(
                    leading: Icon(Icons.add_alert,size: 20.0,color:Colors.white),

                    title: Text('Notification',style:_substyle),
                    trailing: Icon(Icons.arrow_forward_ios,size:20.0,color:Colors.white),
                    onTap: (){},
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box,size: 20.0,color:Colors.white),

                    title: Text('About',style:_substyle),
                    trailing: Icon(Icons.arrow_forward_ios,size:20.0,color:Colors.white),
                    onTap: (){},
                  ),




                ],
              ))
        ],
      )

  );


}
