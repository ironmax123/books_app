import 'package:book_app/ui/video/view_model/video_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PlayButtons extends ConsumerWidget {
  const PlayButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(videoViewModelProvider.notifier);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () => viewModel.seekBack(),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(999),
            ),
            child: Icon(Icons.skip_previous, size: 32),
          ),
        ),
        const Gap(16),
        GestureDetector(
          onTap: () => viewModel.togglePlay(),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(999),
            ),
            child: viewModel.controller != null
                ? ListenableBuilder(
                    listenable: viewModel.controller!,
                    builder: (context, _) => Icon(
                      viewModel.isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 32,
                    ),
                  )
                : Icon(Icons.play_arrow, size: 32),
          ),
        ),
        const Gap(16),
        GestureDetector(
          onTap: () => viewModel.seekForward(),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(999),
            ),
            child: Icon(Icons.skip_next, size: 32),
          ),
        ),
      ],
    );
  }
}
