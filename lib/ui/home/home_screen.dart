import 'package:book_app/data/entity/book/entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:m3_expressive_flutter/m3_expressive_flutter.dart';

import 'components/home_button.dart';
import 'view_model/home_view_model.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;
    final viewModel = ref.read(homeViewModelProvider.notifier);
    final state = ref.watch(homeViewModelProvider);

    final controller = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );

    // 初回ロード
    useEffect(() {
      Future(() => viewModel.fetchBooks('大阪万博'));
      return null;
    }, []);

    // Show loading indicator
    if (state.isLoading) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: cs.secondary,
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark_outline),
              tooltip: 'Saved',
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    // Show error message
    if (state.error != null) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: cs.secondary,
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark_outline),
              tooltip: 'Saved',
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Text('Error: ${state.error}'),
        ),
      );
    }

    if (state.deck.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: cs.secondary,
          actions: [
            IconButton(
              icon: const Icon(Icons.bookmark_outline),
              tooltip: 'Saved',
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: Text('No books found'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: cs.secondary,
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_outline),
            tooltip: 'Saved',
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  // Back card (preview of next)
                  if (state.index + 1 < state.deck.length)
                    Align(
                      alignment: const Alignment(0, -0.02),
                      child: Transform.scale(
                        scale: 0.96,
                        child: _CoverCard(
                          book: state.deck[state.index + 1],
                          elevation: 1,
                        ),
                      ),
                    ),

                  // Top card (draggable)
                  if (state.index < state.deck.length)
                    Align(
                      alignment: Alignment.center,
                      child: Transform.translate(
                        offset: state.drag,
                        child: Transform.rotate(
                          angle: viewModel.getAngleRad(),
                          child: GestureDetector(
                            onPanStart: (_) {},
                            onPanUpdate: viewModel.onPanUpdate,
                            onPanEnd: (details) => viewModel.onPanEnd(
                              details,
                              context,
                              MediaQuery.of(context).size,
                              controller,
                            ),
                            child: SizedBox(
                              width: 260,
                              height: 360,
                              child: Stack(
                                children: [
                                  _CoverCard(
                                    book: state.deck[state.index],
                                    elevation: 6,
                                  ),

                                  // Overlays for decision cues
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Opacity(
                                          opacity:
                                              viewModel.getLikeProgress() < 0
                                              ? (-viewModel.getLikeProgress())
                                                    .clamp(0, 1)
                                              : 0,
                                          child: _DecisionBadge(
                                            color: cs.errorContainer,
                                            icon: Icons.close_rounded,
                                            iconColor: cs.onErrorContainer,
                                            alignment: Alignment.topLeft,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Opacity(
                                          opacity:
                                              viewModel.getLikeProgress() > 0
                                              ? viewModel
                                                    .getLikeProgress()
                                                    .clamp(0, 1)
                                              : 0,
                                          child: _DecisionBadge(
                                            color: cs.tertiaryContainer,
                                            icon: Icons.bookmark_add_outlined,
                                            iconColor: cs.onTertiaryContainer,
                                            alignment: Alignment.topRight,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CapsuleButton(
                    icon: const Icon(Icons.close_rounded),
                    bg: Colors.red.shade400,
                    onPressed: () => viewModel.commitDecision(false, context),
                  ),
                  const SizedBox(width: 64),
                  CapsuleButton(
                    icon: const Icon(Icons.bookmark_add_outlined),
                    bg: Colors.green.shade400,
                    onPressed: () => viewModel.commitDecision(true, context),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: M3eFab.regular(
        icon: Icon(Icons.share),
        onPressed: () {},
      ),
    );
  }
}

class _CoverCard extends StatelessWidget {
  const _CoverCard({required this.book, this.elevation = 3});

  final BookEntity book;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Card(
      elevation: elevation,
      clipBehavior: Clip.antiAlias,
      color: cs.primary,
      child: SizedBox(
        width: 260,
        height: 360,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Book thumbnail or placeholder
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: book.thumbnailUrl != null && book.thumbnailUrl!.isNotEmpty
                  ? Image.network(
                      book.thumbnailUrl!,
                      width: 229,
                      height: 291,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        width: 229,
                        height: 291,
                        color: cs.surfaceVariant,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.book,
                          size: 64,
                          color: cs.onSurfaceVariant,
                        ),
                      ),
                    )
                  : Container(
                      width: 229,
                      height: 291,
                      color: cs.surfaceVariant,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.book,
                            size: 64,
                            color: cs.onSurfaceVariant,
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              book.title,
                              style: TextStyle(
                                color: cs.onSurfaceVariant,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            book.author,
                            style: TextStyle(
                              color: cs.onSurfaceVariant,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DecisionBadge extends StatelessWidget {
  const _DecisionBadge({
    required this.color,
    required this.icon,
    required this.iconColor,
    required this.alignment,
  });

  final Color color;
  final IconData icon;
  final Color iconColor;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: SizedBox(
            width: 48,
            height: 48,
            child: Center(child: Icon(icon, color: iconColor)),
          ),
        ),
      ),
    );
  }
}
