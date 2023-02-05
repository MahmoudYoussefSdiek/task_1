import 'package:task_1/data_layer/model/character.dart';
import 'package:task_1/data_layer/web_services/web_services.dart';

class FetchData {
  final WebServices webServices;

  FetchData(this.webServices);

  Future<List<dynamic>> getAllData() async {
    final data = await webServices.getAllData();
    return data.map((character) => Character.fromJson(character)).toList();
  }
}
