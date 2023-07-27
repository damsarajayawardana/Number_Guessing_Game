import 'package:flutter/material.dart';

class RightGuessPage extends StatelessWidget {
  final int correctNumber;

  const RightGuessPage({required this.correctNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guess Game'),
      ),
      backgroundColor: Color.fromARGB(255, 198, 236, 195),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Yes! you guessed it right. My Secret Number Is',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10), 
            Text(
              '$correctNumber',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 50),
              ),
              child: const Text(
                'Start the Game Again',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
