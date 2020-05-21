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


Widget title(Size size,String head){
  return Container(
      color:Colors.deepPurple,
      width:size.width,
      height: size.height/7,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Container(
              width: size.width/1.5,
              padding: const EdgeInsets.all(20.0),

              child:Column(

                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Text('GCE -TJ MESS FEE SYSTEM',style:_style),

                  Text(head,style:_substyle)
                ],
              )
          ),
          Container(
            width: size.width - size.width/1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FlatButton(


                    child:Text('Home',style: _substyle,),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    splashColor: Colors.white,


                    onPressed: ()=>{print('home is pressed'),}

                ),
                FlatButton(


                    child:Text('Status',style: _substyle,),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    splashColor: Colors.white,


                    onPressed: ()=>{print('Status is pressed'),}

                ),
                FlatButton(


                    child:Text('Verify',style: _substyle,),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    splashColor: Colors.white,


                    onPressed: ()=>{print('verify is pressed'),}

                ),
                FlatButton(


                    child:Text('About',style: _substyle,),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    splashColor: Colors.white,

                    onPressed: ()=>{print('about is pressed'),}

                ),





              ],
            ),
          ),
        ],
      )


  );

}
