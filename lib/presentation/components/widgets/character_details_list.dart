import 'package:flutter/material.dart';
import 'package:task_1/data_layer/model/character.dart';
import 'package:task_1/presentation/components/constants.dart';
import 'package:task_1/presentation/components/widgets/details_item_list.dart';

Widget characterDetailsList(
    {required Character character, required String fullName}) {
  final saying = character.sayings;
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
    child: Column(
      children: [
        detailsItemList(characterFullName, fullName),
        detailsItemList(characterAge, character.age ?? noInfo),
        detailsItemList(characterGender, character.gender ?? noInfo),
        detailsItemList(characterSpecies, character.species ?? noInfo),
        detailsItemList(characterHomePlanet, character.homePlanet ?? noInfo),
        detailsItemList(characterOccupation, character.occupation ?? noInfo),
        detailsItemList(characterSayings, ""),
        Container(
          width: double.infinity,
          margin: const EdgeInsetsDirectional.fromSTEB(8, 4, 4, 8),
          padding: const EdgeInsetsDirectional.fromSTEB(10, 7, 7, 8),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: builder(length: saying!.length, data: saying),
        ),
      ],
    ),
  );
}

Widget builder({
  //1
  required int length,
  required List<String> data,
}) {
  return GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      childAspectRatio: 5 / 1,
      crossAxisSpacing: 1,
      mainAxisSpacing: 1,
    ),
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),
    padding: EdgeInsets.zero,
    itemCount: length,
    itemBuilder: (context, index) {
      return Text(data[index], style: const TextStyle(color: Colors.white)); //2
    },
  );
}
