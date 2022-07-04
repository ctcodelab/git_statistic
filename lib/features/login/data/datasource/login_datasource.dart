abstract class ILoginDataSource {
  String? token();

  void saveToken(String token);
}
