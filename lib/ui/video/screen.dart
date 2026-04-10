import 'dart:async'; // Timerのために追加

import 'package:book_app/ui/video/components/play_buttons.dart';
import 'package:book_app/ui/video/view_model/video_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends HookConsumerWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isControlsVisible = useState(true);

    // タイマーを保持するためのRef
    final timerRef = useRef<Timer?>(null);

    final controller = useMemoized(
      () => VideoPlayerController.asset("assets/video/20251113_002951286.mp4"),
      [],
    );

    // コントロールパネルを隠す関数
    void hideControls() {
      isControlsVisible.value = false;
    }

    // タイマーを開始/リセットする関数
    void startTimer() {
      timerRef.value?.cancel(); // 既存のタイマーをキャンセル
      isControlsVisible.value = true; // パネルを表示
      timerRef.value = Timer(const Duration(milliseconds: 1500), () {
        hideControls();
      });
    }

    useEffect(() {
      controller.initialize().then(
        (_) => ref.read(videoViewModelProvider.notifier).player(controller),
      );
      // 初回表示時にもタイマーを作動させる
      startTimer();

      return () => timerRef.value?.cancel(); // 画面破棄時にタイマーを止める
    }, [controller]);

    useListenable(controller);

    return Scaffold(
      body: Center(
        child: controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: controller.value.aspectRatio,
                child: Stack(
                  children: [
                    // 1. ビデオ本体
                    GestureDetector(
                      onTap: () {
                        if (isControlsVisible.value) {
                          hideControls();
                        } else {
                          startTimer(); // 表示してタイマー開始
                        }
                      },
                      child: VideoPlayer(controller),
                    ),

                    // 2. コントロールパネル（中央配置）
                    Positioned.fill(
                      child: AnimatedOpacity(
                        opacity: isControlsVisible.value ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 300),
                        child: IgnorePointer(
                          ignoring: !isControlsVisible.value,
                          child: GestureDetector(
                            onTap: startTimer, // 背景タップでタイマーリセット
                            child: Container(
                              color: Colors.black38,
                              child: Center(
                                child: GestureDetector(
                                  onTap: startTimer, // 操作したのでタイマー延長
                                  child: const PlayButtons(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
