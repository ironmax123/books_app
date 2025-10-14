import 'package:book_app/data/entity/book/entity.dart';
import 'package:book_app/provider/book/provider.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  static const double decisionDx = 120;
  static const double maxAngleDeg = 12;

  @override
  HomeState build() {
    return HomeState(
      deck: [],
      index: 0,
      drag: Offset.zero,
      isLoading: false,
      error: null,
    );
  }

  Future<void> fetchBooks(String query) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final bookApi = ref.read(booksProvider);
      final books = await bookApi.getBooks(query: query);

      state = state.copyWith(
        deck: books,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
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

    if (isSave || (state.deck[state.index].thumbnailUrl != null &&
                   state.deck[state.index].thumbnailUrl!.isNotEmpty)) {
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
    }

    state = state.copyWith(
      index: (state.index + 1).clamp(0, state.deck.length),
      drag: Offset.zero,
    );

    // Auto-skip following null thumbnails
    skipNullThumbnails();
  }

  void skipNullThumbnails() {
    while (state.index < state.deck.length &&
        (state.deck[state.index].thumbnailUrl == null ||
            state.deck[state.index].thumbnailUrl!.isEmpty)) {
      state = state.copyWith(
        index: (state.index + 1).clamp(0, state.deck.length),
      );
    }
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
    required this.isLoading,
    required this.error,
  });

  final List<BookEntity> deck;
  final int index;
  final Offset drag;
  final bool isLoading;
  final String? error;

  HomeState copyWith({
    List<BookEntity>? deck,
    int? index,
    Offset? drag,
    bool? isLoading,
    String? error,
  }) {
    return HomeState(
      deck: deck ?? this.deck,
      index: index ?? this.index,
      drag: drag ?? this.drag,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}