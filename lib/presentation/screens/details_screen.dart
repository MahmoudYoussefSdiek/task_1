import 'package:flutter/material.dart';
import 'package:task_1/data_layer/model/character.dart';
import 'package:task_1/presentation/components/widgets/character_details_list.dart';
import 'package:task_1/presentation/components/widgets/list_widget.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.character}) : super(key: key);
  final Character character;

  @override
  Widget build(BuildContext context) {
    final firstName = character.name?['first'];
    final middleName = character.name?['middle'];
    final lastName = character.name?['last'];
    final fullName = firstName + " " + middleName + " " + lastName;
    return Scaffold(
      appBar: AppBar(
        title: Text(firstName),
      ),
      body: listWidget(
          widget:
              characterDetailsList(character: character, fullName: fullName)),
    );
  }
}
