import 'package:book_app/provider/fold/provider.dart';
import 'package:book_app/ui/saved/components/saved_screen_tile.dart';
import 'package:book_app/ui/saved/view_model/saved_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SavedScreenBody extends HookConsumerWidget {
  const SavedScreenBody({super.key, this.onBookSelected});

  final void Function({
    required String title,
    required String author,
    required String coverUrl,
    required String description,
  })? onBookSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(savedViewModelProvider.notifier);
    final state = ref.watch(savedViewModelProvider);
    final cs = Theme.of(context).colorScheme;
    final width = MediaQuery.of(context).size.width;
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(deviceWidthProvider.notifier).updateScreen(width);
      });
      return null;
    }, [width]);
    final isWide = ref.watch(deviceWidthProvider);

    return state.savedBooks.isEmpty
        ? const Center(
            child: Text('保存された本がありません', style: TextStyle(fontSize: 16)),
          )
        : ListView.builder(
            itemCount: state.savedBooks.length,
            itemBuilder: (context, index) {
              final book = state.savedBooks[index];
              return SavedScreenTile(
                title: book.title,
                author: book.author,
                thumbnailUrl: book.thumbnailUrl,
                description: book.description,
                publicationDate: book.publicationDate,
                isWide: isWide,
                onTap: onBookSelected != null
                    ? () {
                        onBookSelected!(
                          title: book.title,
                          author: book.author,
                          coverUrl: book.thumbnailUrl ?? '',
                          description: book.description ?? '説明がありません',
                        );
                      }
                    : null,
                onDelete: () async {
                  if (book.isbn != null) {
                    await viewModel.deleteBook(book.isbn!);
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('削除しました'),
                          duration: const Duration(seconds: 1),
                          backgroundColor: cs.tertiaryContainer,
                        ),
                      );
                    }
                  }
                },
              );
            },
          );
  }
}
