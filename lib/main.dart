import 'package:flutter/material.dart';

// Deferred libraries
import 'package:feature1/feature1.dart' deferred as deferredLibrary;
import 'package:feature2/feature2.dart' deferred as deferredLibrary2;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deferred Components App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final feature1 = await loadFeature1();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => feature1),
                );
              },
              child: Text('Load Feature 1'),
            ),
            ElevatedButton(
              onPressed: () async {
                final feature2 = await loadFeature2();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => feature2),
                );
              },
              child: Text('Load Feature 2'),
            ),
          ],
        ),
      ),
    );
  }

  Future<Widget> loadFeature1() async {
    final library = await deferredLibrary.loadLibrary();
    return deferredLibrary.Feature1Screen();
  }

  Future<Widget> loadFeature2() async {
    final library = await deferredLibrary2.loadLibrary();
    return deferredLibrary2.Feature2Screen();
  }
}
