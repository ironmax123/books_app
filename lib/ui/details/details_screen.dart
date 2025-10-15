import 'package:book_app/ui/details/components/details_screen_card.dart';
import 'package:flutter/material.dart';
import 'package:m3_expressive_flutter/m3_expressive_flutter.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.coverUrl,
    required this.description,
    required this.author,
  });
  final String coverUrl;
  final String description;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details')),
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
        icon: Icon(Icons.share),
        onPressed: () {},
      ),
    );
  }
}
