import 'package:flutter/material.dart';
import 'package:basic/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations =[
    WorldTime(url: 'Europe/London', location: 'London', flag: 'Uk.jpg', isDaytime: true, country: "United Kingdom"),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'Kenya.png', isDaytime: true, country: "Kenya"),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'America.jpg', isDaytime: true,country: "United States"),
    WorldTime(url: 'Asia/Karachi', location: 'Karachi', flag: 'Karachi.png', isDaytime: true,country: "Pakistan"),
    WorldTime(url: 'Europe/Berlin', location: 'Berlin', flag: 'Germany.png', isDaytime: true, country: "Germany"),
    WorldTime(location: 'Toronto', flag: 'Germany.png', url: 'America/Toronto', isDaytime: true, country: "Canada")
  ];

  void updateTime(instance) async {
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Choose a Location"),
        centerTitle: true, elevation: 0,

      ),
      body: ListView.builder(itemCount: locations.length, itemBuilder: (context,index){
        return Card(
               child: Padding(
                 padding: EdgeInsets.all(6),
                 child: ListTile(
                     onTap: (){
                       updateTime(locations[index]);
                     },
                     title: Text(locations[index].location.toString()),
                     subtitle: Text(locations[index].country.toString()),
                     trailing: Icon(Icons.backup_outlined),
                     leading: CircleAvatar(backgroundImage: AssetImage('assets/${locations[index].flag}'),foregroundColor: Colors.yellow,radius: 40, backgroundColor: Colors.black87,)),

               )
                 );
      },)
    );
  }
}
