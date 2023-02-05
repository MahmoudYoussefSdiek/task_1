import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_1/data_layer/model/character.dart';
import 'package:task_1/data_layer/repository/fetch_data.dart';

part 'data_controller_state.dart';

class DataControllerCubit extends Cubit<DataControllerState> {
  final FetchData data;
  List<Character> allCharacters = [];
  DataControllerCubit(this.data) : super(DataControllerInitial());

  List<dynamic> getAllData() {
    if (allCharacters.isNotEmpty) {
      emit(CharacterLoaded());
      return allCharacters;
    } else {
      data.getAllData().then((allData) {
        for (int i = 0; i < allData.length; i++) {
          allCharacters.add(allData[i]);
        }
        emit(CharacterLoaded());
      });
      return allCharacters;
    }
  }
}
