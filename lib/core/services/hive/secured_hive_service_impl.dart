import 'package:hive_flutter/hive_flutter.dart';
import 'package:iqvia_kpi/core/services/hive/hive_service.dart';

class SecuredHiveServiceImpl implements HiveService {
  late final Box _securedBox;

  static const tokenKey = 'token';

  @override
  Future init(final String boxName) async {
    // const secureStorage = FlutterSecureStorage();
    // dynamic encryptionKey = await secureStorage.read(key: 'key');
    // if (encryptionKey == null) {
    //   final key = Hive.generateSecureKey();
    //   await secureStorage.write(
    //     key: 'key',
    //     value: base64UrlEncode(key),
    //   );
    // }
    //
    // final key = await secureStorage.read(key: 'key');
    // encryptionKey = base64Url.decode(key!);

    _securedBox = await Hive.openBox(
      boxName,
      // encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }

  @override
  T getValue<T>(key, {T? defaultValue}) {
    return _securedBox.get(key, defaultValue: defaultValue) as T;
  }

  @override
  Future setValue<T>(key, T value) {
    return _securedBox.put(key, value);
  }

  @override
  Future<int> clear() {
    return _securedBox.clear();
  }
}
