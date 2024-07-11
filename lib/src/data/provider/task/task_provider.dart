import 'package:offline_task/src/data/provider/network/error_response.dart';
import 'package:offline_task/src/data/provider/network_client.dart';


class TaskProvider{

  late final NetworkClient networkClient;
  TaskProvider(this.networkClient);

  Future<dynamic> fetchProduct  (String baseurl) async {
    try {
      final response = await networkClient.getApi(baseurl);
      return  CustomApiResponse.getApiResponse(response);
    }on Exception {
      rethrow;
    }

  }
}