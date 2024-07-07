

import 'dart:io';

abstract class BaseApiService {

  Future<dynamic> getApi(String url);
  Future<dynamic> getApiWithAuth(String url, dynamic data);
  Future<dynamic> postApi(String url, dynamic data);
  Future<dynamic> postApiWithAuth(String url, dynamic data, String? token);
  Future<dynamic> postApiWithAuthAndFile(String url, File file);

}

