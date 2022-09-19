abstract class ISecureStorage<T> {
  Future<T?> getItem(String key);

  Future<void> putItem(String key, T value);

  Future<void> deleteAll();

  Future<bool> isNotEmpty();

  Future<void> init();
}
