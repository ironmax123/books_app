import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
class Angle extends _$Angle {
  @override
  Stream<double> build() {
    if (!kIsWeb && Platform.isAndroid) {
      final value = EventChannel(
        'app/angle',
      ).receiveBroadcastStream().map((event) => (event as num).toDouble());
      return value;
    }
    // Android以外やWebの場合は 0.0 を流し続ける
    return Stream.value(0.0);
  }
}
