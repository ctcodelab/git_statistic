abstract class ILoginRepository {
  String? token();

  void saveToken(String token);
}
