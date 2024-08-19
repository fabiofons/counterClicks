import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counterClicks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Counter App')
            ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$counterClicks',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
              Text(counterClicks != 1 ? 'Clicks': 'Click',
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w300))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            return setState(() {
              counterClicks++;
            });
          },
          child: const Icon(Icons.plus_one)
        )
      );
  }
}
