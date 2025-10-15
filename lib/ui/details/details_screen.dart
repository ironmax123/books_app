import 'package:book_app/ui/details/components/details_screen_card.dart';
import 'package:flutter/material.dart';
import 'package:m3_expressive_flutter/m3_expressive_flutter.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.coverUrl,
    required this.description,
    required this.author,
    required this.title,
  });
  final String title;
  final String coverUrl;
  final String description;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Theme.of(context).colorScheme.secondaryFixed,
      ),
      body: ListView(
        children: [
          DetailsScreenCard(
            coverUrl: coverUrl,
            description: description,
            author: author,
          ),
        ],
      ),
      floatingActionButton: M3eFab.regular(
        color: Theme.of(context).colorScheme.outline,
        icon: Icon(Icons.share),
        onPressed: () {},
      ),
    );
  }
}
