import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void _buttonPressed(String name) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Movie'),
        content: Text('you selected $name'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.green[600],
          child: Center(
              child: TextButton(
            onPressed: () => _buttonPressed('Iron Man 1'),
            child: const Text('Iron Man 1'),
          )),
        ),
        Container(
          height: 50,
          color: Colors.green[500],
          child: TextButton(
            onPressed: () => _buttonPressed('Iron Man 2'),
            child: const Text('Iron Man 2'),
          ),
        ),
        Container(
            height: 50,
            color: Colors.green[100],
            child: TextButton(
              onPressed: () => _buttonPressed('Iron Man 3'),
              child: const Text('Iron Man 3'),
            )),
      ],
    );
  }
}
