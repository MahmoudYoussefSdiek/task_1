import 'package:flutter/material.dart';
import 'package:task_1/data_layer/model/character.dart';
import 'package:task_1/presentation/components/widgets/show_loading_indicator.dart';
import 'package:task_1/presentation/layout/details_layout.dart';

class DataItem extends StatelessWidget {
  final Character data;
  final int index;

  const DataItem({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.pushNamed(context, DetailsLayout.route, arguments: index),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  width: double.infinity,
                  margin: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: Image.network(
                    data.images?['main'],
                    loadingBuilder: (context, child, loadingProgress) =>
                        loadingProgress == null
                            ? child
                            : showLoadingIndicator(),
                    // fit: BoxFit.cover,
                  )),
            ),
            Text(
              ' Name : ${data.name?['first']}',
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ' Age : ${data.age}',
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
