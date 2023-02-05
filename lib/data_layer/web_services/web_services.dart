import 'package:dio/dio.dart';
import 'package:task_1/presentation/components/constants.dart';

class WebServices {
  late Dio dio;
  WebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000,
      receiveTimeout: 20 * 1000,
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllData() async {
    try {
      Response response = await dio.get(endPoint);
      return response.data;
    } catch (e) {
      return [];
    }
  }
}
