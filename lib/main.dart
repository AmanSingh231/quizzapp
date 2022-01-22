import 'package:flutter/material.dart';
import 'package:quiz/quiz_page1.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          leading: const Center(
            child: Text("Logo"),
          ),
          centerTitle: true,
          title: const Text("Logo"),
          actions: const [
            Center(child: Text("kch v    ")),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(20.0),
          child: QuizApp1(),
        ),
      ),
    );
  }
}
