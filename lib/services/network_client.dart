

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:offline_task/services/base_api_service.dart';


class NetworkClient implements BaseApiService {

  late final http.Client client;
  late final String token;

  NetworkClient(this.client, this.token);
  Map<String, String> _createHeaders() {
    final headers = <String, String>{
      'Content-Type': 'application/json',
    };
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }
    return headers;
  }



  @override
  Future<dynamic> getApi(String url) async {
    // TODO: implement getApi
    try {
      var uri = Uri.parse(url);
      return  await client.get(uri,headers: _createHeaders());

    }on Exception {
      rethrow;
    }
  }

  @override
  Future getApiWithAuth(String url, data) {
    // TODO: implement getApiWithAuth
    throw UnimplementedError();
  }

  @override
  Future postApi(String url, data) {
    // TODO: implement postApi
    throw UnimplementedError();
  }

  @override
  Future postApiWithAuth(String url, data, String? token) {
    // TODO: implement postApiWithAuth
    throw UnimplementedError();
  }

  @override
  Future postApiWithAuthAndFile(String url, File file) {
    // TODO: implement postApiWithAuthAndFile
    throw UnimplementedError();
  }
}