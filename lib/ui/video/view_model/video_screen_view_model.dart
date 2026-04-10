import 'package:book_app/provider/angle/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:video_player/video_player.dart';

part 'video_screen_view_model.g.dart';

@riverpod
class VideoViewModel extends _$VideoViewModel {
  bool _isInitializing = false;
  VideoPlayerController? _controller;

  @override
  AsyncValue<double> build() {
    // 角度の取得を ViewModel の責務としてラップ
    return ref.watch(angleProvider);
  }

  /// コントローラーを一度だけ安全に初期化する
  Future<void> player(VideoPlayerController controller) async {
    _controller = controller;

    // 既に初期化済、または初期化中の場合は何もしない（二重ロード防止）
    if (controller.value.isInitialized || _isInitializing) return;

    _isInitializing = true;
    try {
      await controller.initialize();
      // 初期化完了後にUIを再描画させるために状態を更新（リビルドを誘発）
      ref.invalidateSelf();
    } catch (e) {
      // 必要に応じてエラーログなどを出力
    } finally {
      _isInitializing = false;
    }
  }

  /// 10秒戻す
  void seekBack() {
    final c = _controller;
    if (c == null || !c.value.isInitialized) return;
    c.seekTo(c.value.position - const Duration(seconds: 10));
  }

  /// 再生/一時停止をトグルする
  void togglePlay() {
    final c = _controller;
    if (c == null || !c.value.isInitialized) return;
    c.value.isPlaying ? c.pause() : c.play();
  }

  /// 10秒進める
  void seekForward() {
    final c = _controller;
    if (c == null || !c.value.isInitialized) return;
    c.seekTo(c.value.position + const Duration(seconds: 10));
  }

  /// 再生中かどうか
  bool get isPlaying => _controller?.value.isPlaying ?? false;
}
