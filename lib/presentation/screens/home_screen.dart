import 'package:flutter/material.dart';
import 'package:task_1/data_layer/model/character.dart';
import 'package:task_1/presentation/components/widgets/list_widget.dart';
import 'package:task_1/presentation/components/widgets/widget_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.data}) : super(key: key);
  final List<Character> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: listWidget(
        widget: widgetBuilder(
          length: data.length,
          data: data,
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
