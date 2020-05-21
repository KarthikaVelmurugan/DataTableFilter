
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'model.dart';
import './viewScreen.dart';
class Body extends StatefulWidget{
  Body() : super();


  @override
  _Body createState() => _Body();

  }
  class _Body extends State<Body> {
    List<Model> details;
    List<Model> selectedStudents;
    
     String yearValue;
     String monthValue;
     String branchValue;
     final regnoController = TextEditingController();
     

final _headStyle = TextStyle(
  fontSize:18.0,
  color:Colors.black,
  fontWeight: FontWeight.bold,
);
     final _subheadStyle = TextStyle(
       fontSize:16.0,
       color:Colors.black,
       fontWeight:FontWeight.w300,
     );

@override 
void initState() {
  selectedStudents = [];
  details = Model.getData();

  super.initState();
}



    @override

    Widget build(BuildContext context) {

      final yearDrop = DropdownButton<String>(
        hint: Text('Select Year',textAlign: TextAlign.center,),
        value: yearValue,

        style: TextStyle(color:Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,),
        items: <DropdownMenuItem<String>>[
          //getDropDownMenuItem('2017', '2017'),
          getDropDownMenuItem('2017', '2017'),
          getDropDownMenuItem('2018', '2018'),
          getDropDownMenuItem('2019', '2019'),
          getDropDownMenuItem('2020', '2020'),
          getDropDownMenuItem('2021', '2021'),
          getDropDownMenuItem('2022', '2022'),
        ],
        onChanged: (String value) {
          setState(() {
            yearValue = value;
            print(yearValue);

          });
        },
      );
      final monthDrop = DropdownButton<String>(
        value: monthValue,
        hint: Text('Select Month',textAlign: TextAlign.center,),
        style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold),

        items: <DropdownMenuItem<String>>[
          getDropDownMenuItem('JAN', 'JAN'),
          getDropDownMenuItem('FEB', 'FEB'),
          getDropDownMenuItem('MAR', 'MAR'),
          getDropDownMenuItem('APR', 'APR'),
          getDropDownMenuItem('MAY', 'MAY'),
          getDropDownMenuItem('JUNE', 'JUNE'),
          getDropDownMenuItem('JULY', 'JULY'),
          getDropDownMenuItem('AUG', 'AUG'),
          getDropDownMenuItem('SEP', 'SEP'),
          getDropDownMenuItem('OCT', 'OCT'),
          getDropDownMenuItem('NOV', 'NOV'),
          getDropDownMenuItem('DEC', 'DEC'),
        ],
        onChanged: (String value) {
          setState(() {
            monthValue = value;
            print(monthValue);
          });
        },
      );

      final branchDrop = DropdownButton<String>(
        hint: Text('Select Branch',textAlign: TextAlign.center,),
        value: branchValue,

        style: TextStyle(color:Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,),
        items: <DropdownMenuItem<String>>[
          getDropDownMenuItem('CSE', 'CSE'),
          getDropDownMenuItem('ECE', 'ECE'),
          getDropDownMenuItem('EEE', 'EEE'),
          getDropDownMenuItem('CIVIL', 'CIVIL'),
          getDropDownMenuItem('MECH', 'MECH'),
        ],
        onChanged: (String value) {
          setState(() {
            branchValue = value;
            print(branchValue);
          });
        },
      );





      Size size = MediaQuery
          .of(context)
          .size;


      return Column(
        children: <Widget>[
          Container(
              width:size.width - size.width/5,
              height: size.height - size.height/5,
              padding: const EdgeInsets.all(7.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width / 5,
                        height: MediaQuery.of(context).size.width / 25,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(color: Colors.deepPurple, width: 2)),

                              child:yearDrop,



                      ),


                      Container(
                        width: MediaQuery.of(context).size.width / 5,
                        height: MediaQuery.of(context).size.width / 25,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(color: Colors.deepPurple, width: 2)),
                            child:monthDrop,

                      ),

                      Container(
                        width: MediaQuery.of(context).size.width / 5,
                        height: MediaQuery.of(context).size.width / 25,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                            border: Border.all(color: Colors.deepPurple, width: 2)),
                        child:branchDrop,

                      ),


                      //monthBox(size),

                      // searchBox(),
                    ],
                  ),
                  inputBox('Search Reg.no.',TextInputType.number,Icon(Icons.search,size:28,color:Colors.deepPurple)),
                  Container(
                    height:size.height/2,
                    width:size.width,

                    child:tabledetails(),
                   
                  )]  )




      )],
              );




            //datatable

    }
    SingleChildScrollView tabledetails(){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,

      child:
          DataTable(

        columns: [
          DataColumn(label:Text('Sl.no.',style:_headStyle)),
          DataColumn(label:Text('Regno.',style:_headStyle)),
          DataColumn(label:Text('Name',style:_headStyle)),
          DataColumn(label:Text('Branch',style:_headStyle)),
          DataColumn(label:Text('Batch',style:_headStyle)),
          DataColumn(label:Text('Status',style:_headStyle)),
          DataColumn(label:Text('View',style:_headStyle))
          
        ],

          rows: details.map((model) => DataRow(
            selected: selectedStudents.contains(model),

            onSelectChanged: null,
            cells: [
              

              DataCell(

                  Text(model.sl_no.toString(),style: _subheadStyle,)),
              DataCell(Text(model.regno.toString(),style:_subheadStyle)),
              DataCell(Text(model.name,style:_subheadStyle)),
              DataCell(Text(model.branch,style: _subheadStyle,)),
              DataCell(Text(model.batch,style:_subheadStyle)),
              DataCell(Text(model.status,style:_subheadStyle)),
              DataCell(RaisedButton(
                onPressed: (){
                },
                child:Text('view',style:_headStyle),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)
                ),
              ))
            ]
            
          ))

          .toList(),
        
      )

            );
  
    } 
     Widget getDropDownMenuItem(String text, String value) {
       return DropdownMenuItem(
         child: new Text(text),
         value: value,
       );
     }

     Widget inputBox(
         String label,TextInputType t,Icon icon){
       return  Container(
           width: MediaQuery.of(context).size.width / 5,
       height: MediaQuery.of(context).size.width / 25,

           child:TextFormField(
             controller: regnoController,

         keyboardType: t,
         autofocus: false,
         onTap: (){
               print(regnoController.text);
         },

         decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color:Colors.deepPurple,width: 2),
            ),

           focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(12.0)),
               borderSide: BorderSide(color:Colors.deepPurple,width: 3)
           ),

           labelText: label,
           labelStyle:TextStyle(color: Colors.blueGrey) ,
           suffixIcon:icon,
         ),
         cursorColor: Colors.purple,
         showCursor: true,
           )
       );




     }





  }



