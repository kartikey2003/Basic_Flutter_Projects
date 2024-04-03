import 'package:dio/dio.dart';
import 'package:task_1/network_config/api_endpoints.dart';

class BaseNetworkCall {
  Dio dio = Dio();

  Future<Response> getPosts() async {
    Response response = await dio.get(ApiEndPoints.postsList.baseURL());
    print(response.data);
    return response;
  }
}
