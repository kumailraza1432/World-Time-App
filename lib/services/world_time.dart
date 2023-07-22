import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  late String location;
  late String time;
  late String flag;
  late String url;
  late bool isDaytime;
  late String country;

  WorldTime({required this.url, required this.location, required this.flag,  required this.isDaytime,required this.country});

  Future<void> getTime() async{

    try {
      Response response = await get(Uri.parse('https://www.worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      // get properties from data
      String datetime = data['datetime'];
      String offset1 = data['utc_offset'].substring(1,3);
      String offset2 = data['utc_offset'].substring(4,5);

      // create Datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset1), minutes: int.parse(offset2)));
      // Set Time
      if(now.hour>6 && now.hour<20){
        isDaytime = true;
      }
      else{
        isDaytime = false;
      }
      time = DateFormat.jms().format(now);
      print("Hour:");
      print(now);
      print(now.hour);
      print("Hourasd:");
    }
    catch(e){
      print("Caught $e");
      time= "Could not get time";
    }

    // make request

  }
}

