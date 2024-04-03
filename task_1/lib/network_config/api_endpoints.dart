import 'package:task_1/network_config/api_config.dart';

class ApiEndPoints {
  static const String postsList = 'posts';
}

extension StringExtention on String {
  String baseURL() {
    return "${ApiConfig.baseurl}$this";
  }
}
