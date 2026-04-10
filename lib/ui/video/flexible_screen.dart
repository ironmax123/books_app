import 'package:book_app/ui/video/components/play_buttons.dart';
import 'package:book_app/ui/video/screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VideoFlexibleScreen extends HookConsumerWidget {
  const VideoFlexibleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: VideoScreen()),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.black87,
                child: Center(child: PlayButtons()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
