import 'package:flutter/material.dart';

class DetailsScreenCard extends StatelessWidget {
  const DetailsScreenCard({
    super.key,
    required this.coverUrl,
    required this.description,
    required this.author,
  });

  /// Absolute URL for the cover image.
  final String coverUrl;

  /// Long description or summary text.
  final String description;

  /// Author display name.
  final String author;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Card(
        elevation: 6,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Cover image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    // Mock image size: 229x291 → aspect ratio ≈ 0.787
                    aspectRatio: 229 / 291,
                    child: Image.network(
                      coverUrl,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;
                        return DecoratedBox(
                          decoration: BoxDecoration(
                            color: theme.colorScheme.surfaceVariant,
                          ),
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      },
                      errorBuilder: (context, _, __) => Container(
                        color: theme.colorScheme.surfaceVariant,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.menu_book_rounded,
                          size: 48,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Description
                Text(description, style: theme.textTheme.bodyLarge),
                const SizedBox(height: 24),

                // Author label
                Text(author, style: theme.textTheme.titleLarge),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
