import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class DeviceWidth extends _$DeviceWidth {
  @override
  bool build() {
    return false;
  }

  void updateScreen(double width) {
    state = width >= 600;
  }

  void updateBottomNavigation(double width) {
    state = width >= 840;
  }
}
