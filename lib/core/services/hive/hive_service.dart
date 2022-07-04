abstract class HiveService {
  Future init(final String boxName);

  T getValue<T>(dynamic key, {T? defaultValue});

  Future setValue<T>(dynamic key, T value);

  Future<int> clear();
}
