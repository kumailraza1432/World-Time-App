// ignore_for_file: use_build_context_synchronously
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:basic/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'Loading';
  Future<void> setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Toronto', flag: 'Django.jpg', url: 'America/Toronto', isDaytime: true, country: "Canada");
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
    print(instance.isDaytime);
  }
  // void getData() async {
  //   Response response =  await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  //   Map data = jsonDecode(response.body);
  //   print(data);
  //   print(data['title']);
  // }



  //int counter = 0;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () => setupWorldTime());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: SpinKitPouringHourGlassRefined(
          color: Colors.white,
          size: 50.0,
        ),
      )
    );
  }
}
