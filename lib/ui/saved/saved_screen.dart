import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'components/saved_screen_tile.dart';
import 'view_model/saved_view_model.dart';

class SavedScreen extends HookConsumerWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(savedViewModelProvider.notifier);
    final state = ref.watch(savedViewModelProvider);
    final cs = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('保存した本'),
        backgroundColor: cs.secondaryFixed,
      ),
      body: state.savedBooks.isEmpty
          ? const Center(
              child: Text(
                '保存された本がありません',
                style: TextStyle(fontSize: 16),
              ),
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
            ),
    );
  }
}
