import 'package:book_app/ui/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeSearchBar extends HookConsumerWidget {
  const HomeSearchBar({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      controller: controller,
      onSubmitted: (value) async {
        await ref.read(homeViewModelProvider.notifier).fetchBooks(value);
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Search for a book',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
