import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var myOpacity = 1.0;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Foo Animations",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              curve: Curves.bounceInOut,
              duration: Duration(
                seconds: 4,
              ),
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isVisible) {
                    myOpacity = 0.0;
                    isVisible = false;
                  } else {
                    myOpacity = 1.0;
                    isVisible = true;
                  }
                });
              },
              child: Text(
                "Close",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
