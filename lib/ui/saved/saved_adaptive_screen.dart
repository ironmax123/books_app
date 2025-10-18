import 'package:book_app/ui/saved/saved_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/fold/provider.dart';
import '../fold/fold_screen.dart';

class SavedAdaptiveScreen extends HookConsumerWidget {
  const SavedAdaptiveScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width;
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(deviceWidthProvider.notifier).updateScreen(width);
      });
      return null;
    }, [width]);

    final isWide = ref.watch(deviceWidthProvider);
    if (isWide) {
      return const FoldScreen();
    } else {
      return const SavedScreen();
    }
  }
}
