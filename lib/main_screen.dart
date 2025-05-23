import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Counter mit Callbacks'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InputCounterBox(
                color: Colors.lime,
                onLengthCallback: (text) {
                  debugPrint(
                    'Box 1: Text geändert zu "$text" (Länge: ${text.length})',
                  );
                },
              ),
              const SizedBox(height: 16),
              InputCounterBox(
                color: Colors.cyan,
                onLengthCallback: (text) {
                  debugPrint('Box 2: Neuer Text ist "$text"');
                },
              ),
              const SizedBox(height: 16),
              InputCounterBox(
                color: Colors.purpleAccent,
                onLengthCallback: (text) {
                  debugPrint('Box 3: Der Text wurde aktualisiert: "$text"');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
