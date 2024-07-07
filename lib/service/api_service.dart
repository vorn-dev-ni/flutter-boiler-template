import 'package:offline_task/service/network/error_response.dart';
import 'package:offline_task/service/network_client.dart';

class ApiService {

  late final NetworkClient networkClient;

  ApiService(this.networkClient);

  Future<dynamic> fetchProduct  (String baseurl) async {
      try {
        final response = await networkClient.getApi(baseurl);
        return  CustomApiResponse.getApiResponse(response);
      }on Exception {
        rethrow;
      }

  }
}