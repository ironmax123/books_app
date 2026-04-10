import 'package:book_app/ui/video/flexible_screen.dart';
import 'package:book_app/ui/video/screen.dart';
import 'package:book_app/ui/video/view_model/video_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VideoAdaptiveScreen extends HookConsumerWidget {
  const VideoAdaptiveScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final angleAsync = ref.watch(videoViewModelProvider);

    return Scaffold(
      body: angleAsync.when(
        data: (angle) {
          if (angle > 40 && angle < 140) {
            return VideoFlexibleScreen();
          } else {
            return VideoScreen();
          }
        },
        error: (_, __) => const Text('エラー'),
        loading: () => const Text('読み込み中...'),
      ),
    );
  }
}
