import 'package:book_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SavedScreenTile extends StatelessWidget {
  const SavedScreenTile({
    super.key,
    required this.title,
    this.thumbnailUrl,
    required this.author,
    this.description,
    this.publicationDate,
    this.onDelete,
  });
  final String title;
  final String author;
  final String? thumbnailUrl;
  final String? description;
  final String? publicationDate;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Material(
        color: theme.colorScheme.primaryFixed,
        elevation: 6,
        shadowColor: Colors.black26,
        borderRadius: BorderRadius.circular(24),
        child: InkWell(
          onTap: () => context.push(
            Routes.details,
            extra: {
              'coverUrl': thumbnailUrl ?? '',
              'description': description ?? '説明がありません',
              'author': author,
              'title': title,
            },
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (thumbnailUrl != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: SizedBox(
                      width: 100,
                      child: Image.network(
                        thumbnailUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          height: 100,
                          color: theme.colorScheme.surfaceContainerHighest,
                          alignment: Alignment.center,
                          child: const Icon(Icons.book),
                        ),
                      ),
                    ),
                  )
                else
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: 56,
                      height: 56,
                      color: theme.colorScheme.surfaceVariant,
                      alignment: Alignment.center,
                      child: const Icon(Icons.book),
                    ),
                  ),
                const Gap(16),
                // Title and author take remaining space
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Gap(4),
                      Text(
                        author,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Color(0xffbababa),
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                if (onDelete != null) ...[
                  const Gap(8),
                  IconButton(
                    icon: const Icon(Icons.delete_outline),
                    color: theme.colorScheme.error,
                    onPressed: onDelete,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
