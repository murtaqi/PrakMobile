import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column')
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakLove(bgColor: Colors.orange, label: "Kotak 1"),
                  SizedBox(width: 50,),
                  KotakLove(bgColor: Colors.yellow, label: "Kotak 2")
                ],
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakLove(bgColor: Colors.green, label: "Kotak 3"),
                  SizedBox(width: 50,),
                  KotakLove(bgColor: Colors.blue, label: "Kotak 4")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class KotakLove extends StatelessWidget {
  final Color bgColor;
  final String label;

  const KotakLove({
    super.key,
    required this.bgColor,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: bgColor,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
          const SizedBox(height: 8,),
          Text(
            label,
            style: TextStyle(
              color: Colors.black
            ),
          )
        ],
      ),
    );
  }
}


class KotakBiruJempol extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(
        Icons.thumb_up,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}