import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;

  ApiServices({required this.dio});

  Future<List<dynamic>> getAllCharacters() async {
    final Response response = await dio.get('character');
    return response.data['results'];
  }
}
