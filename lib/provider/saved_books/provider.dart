import 'package:book_app/data/entity/book/entity.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
SavedBooksRepository savedBooks(SavedBooksRef ref) {
  return SavedBooksRepository();
}

@riverpod
class SavedBooksList extends _$SavedBooksList {
  @override
  List<BookEntity> build() {
    final repository = ref.watch(savedBooksProvider);
    return repository.getAll();
  }

  Future<void> saveBook(BookEntity book) async {
    final repository = ref.read(savedBooksProvider);
    await repository.save(book);
    state = repository.getAll();
  }

  Future<void> deleteBook(String isbn) async {
    final repository = ref.read(savedBooksProvider);
    await repository.delete(isbn);
    state = repository.getAll();
  }

  bool isSaved(String? isbn) {
    if (isbn == null) return false;
    return state.any((book) => book.isbn == isbn);
  }
}

class SavedBooksRepository {
  static const String _boxName = 'saved_books';

  Box<BookEntity> get _box => Hive.box<BookEntity>(_boxName);

  /// Initialize the Hive box
  static Future<void> initialize() async {
    await Hive.openBox<BookEntity>(_boxName);
  }

  /// Save a book
  Future<void> save(BookEntity book) async {
    if (book.isbn == null) return;
    await _box.put(book.isbn, book);
  }

  /// Delete a book by ISBN
  Future<void> delete(String isbn) async {
    await _box.delete(isbn);
  }

  /// Get all saved books
  List<BookEntity> getAll() {
    return _box.values.toList();
  }

  /// Check if a book is saved
  bool isSaved(String? isbn) {
    if (isbn == null) return false;
    return _box.containsKey(isbn);
  }

  /// Get a book by ISBN
  BookEntity? getByIsbn(String isbn) {
    return _box.get(isbn);
  }

  /// Clear all saved books
  Future<void> clear() async {
    await _box.clear();
  }
}
