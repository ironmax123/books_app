import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'details_screen_card.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({
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
    return ListView(
      children: [
        DetailsScreenCard(
          coverUrl: coverUrl,
          description: description,
          author: author,
        ),
        const Gap(32),
      ],
    );
  }
}
