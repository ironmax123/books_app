import 'package:book_app/data/entity/book/entity.dart';
import 'package:book_app/provider/saved_books/provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved_view_model.g.dart';

@riverpod
class SavedViewModel extends _$SavedViewModel {
  @override
  SavedState build() {
    // Watch saved books from provider
    final savedBooks = ref.watch(savedBooksListProvider);
    return SavedState(
      savedBooks: savedBooks,
      isLoading: false,
    );
  }

  Future<void> deleteBook(String isbn) async {
    await ref.read(savedBooksListProvider.notifier).deleteBook(isbn);
  }

  Future<void> refresh() async {
    // Force refresh by invalidating the provider
    ref.invalidateSelf();
  }
}

class SavedState {
  const SavedState({
    required this.savedBooks,
    required this.isLoading,
  });

  final List<BookEntity> savedBooks;
  final bool isLoading;

  SavedState copyWith({
    List<BookEntity>? savedBooks,
    bool? isLoading,
  }) {
    return SavedState(
      savedBooks: savedBooks ?? this.savedBooks,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
