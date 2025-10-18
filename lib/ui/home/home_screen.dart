import 'package:book_app/data/entity/book/entity.dart';
import 'package:book_app/ui/home/components/home_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final searchController = useTextEditingController();

    // Show loading indicator
    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    // Show error message
    if (state.error != null) {
      return Center(child: Text('Error: ${state.error}'));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        backgroundColor: cs.secondaryFixed,
      ),
      body: Column(
        children: [
          const Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HomeSearchBar(controller: searchController),
          ),
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
                                        opacity: viewModel.getLikeProgress() < 0
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
                                        opacity: viewModel.getLikeProgress() > 0
                                            ? viewModel.getLikeProgress().clamp(
                                                0,
                                                1,
                                              )
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
            padding: const EdgeInsets.only(bottom: 110),
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
            // Book thumbnail
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                book.thumbnailUrl!,
                width: 229,
                height: 291,
                fit: BoxFit.cover,
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
