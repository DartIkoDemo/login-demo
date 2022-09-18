import 'package:login_demo/core/components/i_first_launch_detector.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstLaunchDetector implements IFirstLaunchDetector {
  static const _firstRunKey = 'first_run';
  final Future<SharedPreferences> _prefsFuture =
      SharedPreferences.getInstance();

  @override
  Future<bool> detect() async {
    final bool isFirstLaunch = await _prefsFuture
        .then((readyPrefs) => readyPrefs.getBool(_firstRunKey) ?? true);
    if (isFirstLaunch) {
      await _prefsFuture
          .then((readyPrefs) => readyPrefs.setBool(_firstRunKey, false));
    }
    return isFirstLaunch;
  }
}
