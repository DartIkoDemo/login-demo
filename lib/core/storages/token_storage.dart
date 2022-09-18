import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:login_demo/core/components/i_first_launch_detector.dart';

import 'i_secure_storage.dart';

class TokenStorage implements ISecureStorage<String> {
  final IFirstLaunchDetector _firstLaunchDetector;
  final FlutterSecureStorage _storage;

  const TokenStorage(
    IFirstLaunchDetector firstLaunchDetector,
    FlutterSecureStorage storage,
  )   : _firstLaunchDetector = firstLaunchDetector,
        _storage = storage;

  @override
  Future<void> init() => _firstLaunchDetector
      .detect()
      .then((isFirstLaunch) => isFirstLaunch ? _storage.deleteAll() : null);

  @override
  Future<void> deleteAll() => _storage.deleteAll();

  @override
  Future<String?> getItem(String key) => _storage.read(key: key);

  @override
  Future<void> putItem(String key, String value) =>
      _storage.write(key: key, value: value);

  @override
  Future<bool> isNotEmpty() =>
      _storage.readAll().then((allRecords) => allRecords.isNotEmpty);
}
