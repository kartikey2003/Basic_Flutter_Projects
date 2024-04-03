import 'package:dio/dio.dart';
import 'package:task_1/home/model/post_model.dart';
import 'package:task_1/network_config/base_network_call.dart';

class HomeNetwork {
  static Future<PostModelList?> postsList(int id) async {
    Response response = await BaseNetworkCall().getPosts();
    return PostModelList.fromJson(response.data);
  }
}
