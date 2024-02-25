import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Week 17 Assessment',
      theme: ThemeData(
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.black) ,
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Week 17 Assessment'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              color: Colors.blueGrey,
              child: Center(
                child: Text(
                  ' Piggy Bank',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height:5),
            TextButton(
              onPressed: () {
              },
              child: Text(
                  'Start',
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  4,
                  (index)=> Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(3),
                    child: Center(
                      child: Text(
                        'Savings ${index + 1}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
