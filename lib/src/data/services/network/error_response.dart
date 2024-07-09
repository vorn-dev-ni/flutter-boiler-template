import 'package:http/http.dart';
import 'package:offline_task/src/data/services/network/api_exception.dart';

class CustomApiResponse {
    static getApiResponse (Response response) async {
        switch (response.statusCode) {
            case 200:
                // return User.fromJson(jsonDecode(response.body));
            case 204:
                throw ApiException('No content', 204);
            case 400:
                throw ApiException('Bad request', 400);
            case 401:
                throw ApiException('Unauthorized', 401);
            case 403:
                throw ApiException('Forbidden', 403);
            case 404:
                throw ApiException('Not found', 404);
            case 500:
                throw ApiException('Internal server error', 500);
            default:
                throw ApiException('Unexpected error occurred', response.statusCode);
        }
    }


}