import 'dart:convert';
import 'package:clean_architecture/core/constants/api_string.dart';
import 'package:clean_architecture/features/home/data/models/get_response_model.dart';
import 'package:http/http.dart' as http;

class GetHttpClient {
  final http.Client client;

  GetHttpClient({http.Client? httpClient})
      : client = httpClient ?? http.Client();

  Future<List<GetResponse>> getPosts() async {
    final response = await client.get(Uri.parse(ApiString.getposts));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => GetResponse.fromJson(json)).toList();
      // For simple response without list
      //   final Map<String, dynamic> jsonMap = json.decode(response.body);
      // return GetResponse.fromJson(jsonMap);
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
