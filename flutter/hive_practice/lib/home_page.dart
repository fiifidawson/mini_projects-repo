import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // reference our box
  final _myBox = Hive.box('myBox');

  // write data
  void writeData() {
    _myBox.put(1, 'John Doe');
  }

  // read data
  void readData() {
    _myBox.get(1);    
  }

  // delete data
  void deleteData() {
    _myBox.delete(1);
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(onPressed: writeData,
                color: Colors.blue,
                child: const Text("Write"),
                ),
                MaterialButton(onPressed: readData,
                color: Colors.blue,
                child: const Text("Read"),
                ),
                MaterialButton(onPressed: deleteData,
                color: Colors.blue,
                child: const Text("Delete"),
              ),
            ],
          )
        )
      );
    }
}
