import 'package:flutter/material.dart';
import 'navigationbar.dart';
import 'datatable_page2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go to SMIC in 2027',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 4, 136, 123),
          shadowColor: Colors.black,
          title: const Center(
            child: Text('Go to SMIC in 2027'),
          ),
          actions: <Widget>[
            GestureDetector(
              onTap: () {
                // ignore_for_file: avoid_print
                print("Container was tappedHNNNNNNNNNNNNNNNNNN");
              },
              child: const Icon(
                Icons.sync,
                size: 32.0,
              ),
            )
          ],
        ),
        body: createDataTable_table2(),
      ),
    );
  }
}
