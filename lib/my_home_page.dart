import 'package:basic_widgets/button_page.dart';
import 'package:basic_widgets/image_assets.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Basic Widgets',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Worked',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              _count.toString(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('Button clicked and the counter is $_count');
                increaseCount();
              },
              child: Text(
                'Count',
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageAssetLesson(),
                  ),
                );
              },
              child: Text(
                'Go to image page',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ButtonPage(),
                  ),
                );
              },
              child: Text(
                'Go to button page',
              ),
            ),
          ],
        ),
      ),
    );
  }

  void increaseCount() {
    setState(() {
      _count++;
    });
  }
}
