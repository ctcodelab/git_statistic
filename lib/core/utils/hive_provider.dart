import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveProvider {
  late final Box _preferencesBox;
  late final Box _securedBox;

  Future init() async {
    await Hive.initFlutter();

    _preferencesBox = await Hive.openBox('_preferences');

    /// Secured Box initialization
    const secureStorage = FlutterSecureStorage();
    dynamic encryptionKey = await secureStorage.read(key: 'key');
    if (encryptionKey == null) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: 'key',
        value: base64UrlEncode(key),
      );
    }

    final key = await secureStorage.read(key: 'key');
    encryptionKey = base64Url.decode(key!);

    _securedBox = await Hive.openBox(
      '_securedBox',
      encryptionCipher: HiveAesCipher(encryptionKey),
    );
  }
}
