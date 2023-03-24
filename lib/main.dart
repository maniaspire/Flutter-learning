import 'package:flutter/material.dart';
import 'package:flutter_learning/list.dart';

void main() {
  runApp(const Learning());
}

class Learning extends StatelessWidget {
  const Learning({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My Learnings",
      home: LayoutPage(name: 'My Learnings', author: 'Manikandan'),
    );
  }
}

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key, required this.name, required this.author});

  final String name;
  final String author;

  @override
  State<StatefulWidget> createState() => LayoutPageState();
}

class LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: IntrinsicWidth(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: getMovies(),
        ),
      ),
    );
  }
}
