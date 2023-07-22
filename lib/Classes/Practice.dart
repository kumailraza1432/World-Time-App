import 'package:flutter/material.dart';
import 'package:basic/AppBaar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Practice extends StatelessWidget{
  int _val=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBars(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(20.0 , 20.0 , 0 , 0),
                      child: Image(image: AssetImage('assets/once.jpg'), width: 300.0, height: 200.0,)
                  ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(20.0,20.0, 0, 0),
                      child: Text("BEECH From Maldives",style: TextStyle(color: Colors.white, fontSize: 40.0,fontWeight: FontWeight.bold),),),
                    Container(
                      padding: EdgeInsets.fromLTRB(20.0,0, 20.0, 0),
                      child: (Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"
                          " incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, "
                          "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
                          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat "
                          "nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia "
                          "deserunt mollit anim id est laborum.",
                        style: TextStyle(color: Colors.white, fontSize: 10.0,fontWeight: FontWeight.normal),
                        overflow: TextOverflow.ellipsis,softWrap: true,maxLines: 10,)
                      )
                    ),
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
                        Icon(Icons.star,
                          color: Colors.yellow,
                          size: 30.0,),
                        Icon(Icons.star,
                          color: Colors.yellow,
                          size: 30.0,),
                        Icon(Icons.star,
                          color: Colors.yellow,
                          size: 30.0,),
                        Icon(Icons.star,
                          color: Colors.white54,
                          size: 30.0,),
                        Icon(Icons.star,
                          color: Colors.white54,
                          size: 30.0,),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      child: DropdownButton(
                        value: _val,
                        items: [
                          DropdownMenuItem(
                            child: Text("Economy"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Executive"),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Business"),
                            value: 3,
                          )
                        ],
                        onChanged: (int? value) {
                          _val = value!;
                        },

                      ),
                    )
                  ],
                  ),
                )
              ],
            ),
        ],
      )
    );
  }

}