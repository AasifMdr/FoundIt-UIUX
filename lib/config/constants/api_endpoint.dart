class ApiEndpoints {
  ApiEndpoints._();

  static const Duration connectionTimeout = Duration(seconds: 1000);
  static const Duration receiveTimeout = Duration(seconds: 1000);
  static const String baseUrl = "http://192.168.1.71:3000/api/v1/";

  static const String login = "auth/login";
  static const String register = "auth/register";

  static const String uploadImage = "auth/uploadImage";
}
