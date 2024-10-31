import 'package:flutter/material.dart';
class ColumnPage extends StatelessWidget {
  const ColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("Column widget"),
      ),
      body: const Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("R-1",style: TextStyle(fontSize: 25)),
            Text("R-2",style: TextStyle(fontSize: 25)),
            Text("R-3",style: TextStyle(fontSize: 25)),
            Text("R-4",style: TextStyle(fontSize: 25)),
            Text("R-5",style: TextStyle(fontSize: 25))
          ],
        ),
      ),
    );
  }
}
