//import 'dart:convert';

import 'package:flutter/material.dart';
//import 'package:world_time_app/services/world_time.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  //Object? parameters;
  @override
  Widget build(BuildContext context) {
    //data = ModalRoute.of(context)!.settings.arguments as Map;
    data = ModalRoute.of(context)?.settings.arguments as Map;
    // print(data);

    //set background
    String bgImage = data['isDaytime'] ? 'day1.jpg' : 'night.jpg';
    Color? bgColor = data['isDaytime'] ? const Color.fromARGB(255, 17, 51, 110) : Colors.black12;

    return Scaffold(
    backgroundColor: bgColor,
      body: SafeArea(
            child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/$bgImage'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: SafeArea(
            child: Column(children: <Widget>[
              TextButton.icon(
                onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, '/location');
                },
                icon:  Icon(
                  Icons.edit_location,
                  color: Colors.grey[300],
                ),
                label:  Text(
                  'Edit Location',
                  style: TextStyle(color: Colors.grey[300]),
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data['location'],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        letterSpacing: 2.0),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              Text(
                data['time'],
                style: const TextStyle(color: Colors.white, fontSize: 66.0),
              )
            ]),
          ),
        ),
      ),
    )
    );
  }
}
