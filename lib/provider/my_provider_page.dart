import 'package:flutter/material.dart';
import 'package:myapp/provider/counter_provider.dart';
import 'package:provider/provider.dart';

class MyProviderPage extends StatelessWidget {
  const MyProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyProvider Page"),
      ),
      body: Center(
        child: Column(children: [
          Text("Counter: ${context.watch<Counter>().count}"),
          ElevatedButton(
            onPressed: context.read<Counter>().increment,
            child: const Text("+"),
          ),
          ElevatedButton(
            onPressed: context.read<Counter>().decrement,
            child: const Text("-"),
          ),
        ]),
      ),
    );
  }
}
