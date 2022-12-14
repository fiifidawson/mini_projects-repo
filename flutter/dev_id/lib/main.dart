import 'package:flutter/material.dart';

void main() => runApp(
    const MaterialApp(home: DevAlder(), debugShowCheckedModeBanner: false));

class DevAlder extends StatelessWidget {
  const DevAlder({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Developer ID'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, // Removes the shadow
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: CircleAvatar(
                  backgroundImage: AssetImage('images/leoAdler.jpg'),
                  radius: 60.0 //pixels
                  ),
            ),
            const Divider(
              height: 45.0,
              color: Colors.amberAccent,
            ),
            const Text(
              'NAME',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            const SizedBox(
              height: 10.0,
            ), //Adds space between widgets
            Text(
              'Fiifi Dawson',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              'COURSE',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            const SizedBox(
              height: 10.0,
            ), //Adds space between widgets
            Text(
              'Bsc Artificial Intelligence',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  'edem.fiifi.dawson@gmail.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
