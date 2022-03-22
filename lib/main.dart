import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final orientation  = MediaQuery.of(context).orientation ==Orientation.landscape;
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Assignment"),
          backgroundColor: Color(0xFF86119C),
        )
        ,
        drawer: orientation
            ? null
            : Drawer(child: Column(
          children: const [
            SizedBox(height: 70,),
            Text('first element ',style: TextStyle(fontSize: 25 ),),
            SizedBox(height: 20,),
            Text('second element   ',style: TextStyle(fontSize: 25 ),),
            SizedBox(height: 20,),
            Text('third element   ',style: TextStyle(fontSize: 25 ),),
            SizedBox(height: 20,),
            Text('fourth element  ',style: TextStyle(fontSize: 25 ),),
            SizedBox(height: 20,),
            Text('fifth element  ',style: TextStyle(fontSize: 25 ),),
            SizedBox(height: 20,),

          ],),),


        body:orientation  ? Row(
          children: [
            Container(

                width: MediaQuery.of(context).size.width / 2,
                child: ListView(
                  children: const [
                    SizedBox(height: 70,),
                    Text ('first element ',style: TextStyle(fontSize: 25 ),),
                    SizedBox(height: 20,),
                    Text('second element   ',style: TextStyle(fontSize: 25 ),),
                    SizedBox(height: 20,),
                    Text('third element   ',style: TextStyle(fontSize: 25 ),),
                    SizedBox(height: 20,),
                    Text('fourth element  ',style: TextStyle(fontSize: 25 ),),
                    SizedBox(height: 20,),
                    Text('fifth element  ',style: TextStyle(fontSize: 25 ),),
                    SizedBox(height: 20,),
                ],
                )),


            Container(
                width: MediaQuery.of(context).size.width / 2,
                color: Color(0xFF970000)),
          ],
        )
            : Container(color:Color(0xFF970000))

    );
    /*return Scaffold(

        appBar: AppBar(title:  Text('SECOND ASSIGNMENT',style: TextStyle(fontSize: 25 ),),
          backgroundColor: Color(0xFF86119C),),




    body:Container(

        child: MediaQuery.of(context).orientation== Orientation .landscape?


        if(landscape){
    drawer: Drawer(child: Column(
    children: const [
    SizedBox(height: 70,),
    Text('first element ',style: TextStyle(fontSize: 25 ),),
    SizedBox(height: 20,),
    Text('second element   ',style: TextStyle(fontSize: 25 ),),
    SizedBox(height: 20,),
    Text('third element   ',style: TextStyle(fontSize: 25 ),),
    SizedBox(height: 20,),
    Text('fourth element  ',style: TextStyle(fontSize: 25 ),),
    SizedBox(height: 20,),
    Text('fifth element  ',style: TextStyle(fontSize: 25 ),),
    SizedBox(height: 20,),

    ],),),

    }else{
    ListView(children:
    const [
    Text('info.value',style: TextStyle(fontSize: 25)),
    Text('info.value',style: TextStyle(fontSize: 25)),
    Text('info.value',style: TextStyle(fontSize: 25)),
    Text('info.value',style: TextStyle(fontSize: 25)),
    Text('info.value',style: TextStyle(fontSize: 25))
    ],
    width: MediaQuery.of(context).size.width/2,
    ),

    Container(
    color: Color(0xFF86119C),
    ) ,
    }

    ));*/

  }
}
