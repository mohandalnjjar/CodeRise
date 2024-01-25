import 'package:dio/dio.dart';

class ApiService {
  final String _BaseUrl = 'https://newsapi.org/v2/';
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> Get({required String endPoint}) async {
    var response = await dio.get('$_BaseUrl$endPoint');
    return response.data;
  }
}
