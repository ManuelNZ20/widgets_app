import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListTileMenuItem extends StatelessWidget {
  const ListTileMenuItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.link,
  });
  final String title;
  final String subTitle;
  final IconData icon;
  final String link;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      leading: Icon(
        icon,
        color: colors.primary,
      ),
      trailing: IconButton(
        onPressed: () => context.push(link),
        icon: const Icon(
          Icons.arrow_forward_ios_rounded,
        ),
      ),
      onTap: () => context.push(link),
    );
  }
}
