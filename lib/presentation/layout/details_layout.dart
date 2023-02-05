import 'package:flutter/material.dart';
import 'package:task_1/business_logic/app_route.dart';
import 'package:task_1/presentation/components/constants.dart';
import 'package:task_1/presentation/screens/details_screen.dart';

class DetailsLayout extends StatelessWidget {
  final int index;
  const DetailsLayout({Key? key, required this.index}) : super(key: key);
  static const String route = detailsLayoutRoute;

  @override
  Widget build(BuildContext context) {
    return DetailsScreen(
      character: AppRoute.dataControllerCubit.allCharacters[index],
    );
  }
}
