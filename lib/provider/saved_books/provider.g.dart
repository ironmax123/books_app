// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$savedBooksHash() => r'3a4cbc64de427160c6aae0794c803fc19fe271d3';

/// See also [savedBooks].
@ProviderFor(savedBooks)
final savedBooksProvider = AutoDisposeProvider<SavedBooksRepository>.internal(
  savedBooks,
  name: r'savedBooksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$savedBooksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SavedBooksRef = AutoDisposeProviderRef<SavedBooksRepository>;
String _$savedBooksListHash() => r'bb0736401ab7ca0baa87005e4142deee0341a615';

/// See also [SavedBooksList].
@ProviderFor(SavedBooksList)
final savedBooksListProvider =
    AutoDisposeNotifierProvider<SavedBooksList, List<BookEntity>>.internal(
  SavedBooksList.new,
  name: r'savedBooksListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$savedBooksListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SavedBooksList = AutoDisposeNotifier<List<BookEntity>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
