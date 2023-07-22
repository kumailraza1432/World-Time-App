import 'dart:convert';

import 'package:flutter/material.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  Object? data = {};
  Map myData = {};
  @override
  Widget build(BuildContext context) {
    try {
      data =  ModalRoute.of(context)?.settings.arguments;
      myData = json.decode(jsonEncode(data));
      // set backgroundImage
    }
    catch(e){
      print(e);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacementNamed(context, '/');
      });
    }
    //String jh = 'once.jpg';
    String bgImage;
    if(myData['isDaytime']){
      bgImage='Day.jpg';
    }
    else{
      bgImage='Night.jpg';
    }
    print(bgImage);

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/$bgImage'), fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(onPressed: (){
                Navigator.pushReplacementNamed(context, '/location');
              }, icon: Icon(Icons.edit_location), label: Text("Edit Location",),color: Colors.white,),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(myData['location'] , style: TextStyle(fontSize: 30 , fontFamily: 'inder',color: Colors.white)),
                  SizedBox(height: 50,)
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(myData['time'] , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 60 , fontFamily: 'inder',color: Colors.white),),
                  SizedBox(height: 30,)
                ]
              )
            ]
          )
        )
      )
    );
  }
}
