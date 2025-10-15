import 'package:book_app/ui/details/components/details_screen_body.dart';
import 'package:book_app/ui/saved/components/saved_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FoldScreen extends HookConsumerWidget {
  const FoldScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedBook = useState<Map<String, String>?>(null);

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedBook.value?['title'] ?? ''),
        backgroundColor: Theme.of(context).colorScheme.secondaryFixed,
      ),
      body: Row(
        children: [
          Expanded(
            child: SavedScreenBody(
              onBookSelected: ({
                required String title,
                required String author,
                required String coverUrl,
                required String description,
              }) {
                selectedBook.value = {
                  'title': title,
                  'author': author,
                  'coverUrl': coverUrl,
                  'description': description,
                };
              },
            ),
          ),
          Expanded(
            child: selectedBook.value == null
                ? Container()
                : DetailsScreenBody(
                    coverUrl: selectedBook.value!['coverUrl']!,
                    description: selectedBook.value!['description']!,
                    author: selectedBook.value!['author']!,
                    title: selectedBook.value!['title']!,
                  ),
          ),
        ],
      ),
    );
  }
}
