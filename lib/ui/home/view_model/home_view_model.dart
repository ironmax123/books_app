import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  static const _imageUrl = 'https://placehold.jp/229x291.png';
  static const double decisionDx = 120;
  static const double maxAngleDeg = 12;

  @override
  HomeState build() {
    return HomeState(
      deck: List.filled(10, _imageUrl),
      index: 0,
      drag: Offset.zero,
    );
  }

  void onPanUpdate(DragUpdateDetails details) {
    state = state.copyWith(
      drag: state.drag + details.delta,
    );
  }

  void updateDrag(Offset drag) {
    state = state.copyWith(drag: drag);
  }

  void animateOffscreen(
    AnimationController controller,
    double targetDx, {
    required VoidCallback then,
  }) {
    final target = Offset(targetDx, -40);
    final animation = Tween<Offset>(
      begin: state.drag,
      end: target,
    ).chain(CurveTween(curve: Curves.easeOut)).animate(controller);

    void listener() {
      updateDrag(animation.value);
    }

    animation.addListener(listener);

    controller
      ..duration = const Duration(milliseconds: 220)
      ..forward(from: 0).whenComplete(() {
        animation.removeListener(listener);
        then();
        resetDrag();
      });
  }

  void reboundToCenter(AnimationController controller) {
    final animation = Tween<Offset>(
      begin: state.drag,
      end: Offset.zero,
    ).chain(CurveTween(curve: Curves.easeOut)).animate(controller);

    void listener() {
      updateDrag(animation.value);
    }

    animation.addListener(listener);

    controller
      ..duration = const Duration(milliseconds: 200)
      ..forward(from: 0).whenComplete(() {
        animation.removeListener(listener);
      });
  }

  void onPanEnd(
    DragEndDetails details,
    BuildContext context,
    Size screenSize,
    AnimationController controller,
  ) {
    final dx = state.drag.dx;

    if (dx.abs() > decisionDx) {
      final isSave = dx > 0;
      animateOffscreen(
        controller,
        isSave ? screenSize.width : -screenSize.width,
        then: () => commitDecision(isSave, context),
      );
    } else {
      reboundToCenter(controller);
    }
  }

  void commitDecision(bool isSave, BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final icon = isSave ? Icons.bookmark_add_outlined : Icons.close_rounded;
    final bg = isSave ? cs.tertiaryContainer : cs.errorContainer;
    final fg = isSave ? cs.onTertiaryContainer : cs.onErrorContainer;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: bg,
        content: Row(
          children: [
            Icon(icon, color: fg),
            const SizedBox(width: 8),
            Text(isSave ? 'Saved' : 'Skipped', style: TextStyle(color: fg)),
          ],
        ),
        duration: const Duration(milliseconds: 800),
      ),
    );

    state = state.copyWith(
      index: (state.index + 1).clamp(0, state.deck.length),
      drag: Offset.zero,
    );
  }

  void resetDrag() {
    state = state.copyWith(drag: Offset.zero);
  }

  double getAngleRad() {
    final sign = state.drag.dx.sign;
    final ratio = (state.drag.dx.abs() / 200).clamp(0, 1);
    final deg = maxAngleDeg * ratio * sign;
    return deg * 3.141592653589793 / 180;
  }

  double getLikeProgress() {
    return (state.drag.dx / decisionDx).clamp(-1, 1).toDouble();
  }
}

class HomeState {
  const HomeState({
    required this.deck,
    required this.index,
    required this.drag,
  });

  final List<String> deck;
  final int index;
  final Offset drag;

  HomeState copyWith({
    List<String>? deck,
    int? index,
    Offset? drag,
  }) {
    return HomeState(
      deck: deck ?? this.deck,
      index: index ?? this.index,
      drag: drag ?? this.drag,
    );
  }
}