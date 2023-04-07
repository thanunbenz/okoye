import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Template'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Input your name:'),
              SizedBox(height: 10),
              TextField(
                onChanged: (value) {
                  setState(() {
                    inputValue = value;
                  });
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Next Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NextPage(name: inputValue),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  final String name;

  const NextPage({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: Text('Hello, $name!'),
      ),
    );
  }
}
