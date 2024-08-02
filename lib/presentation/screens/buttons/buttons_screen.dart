import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/widgets.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screens'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Elevated Disable'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon'),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('Filled'),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.flutter_dash),
              label: const Text('Filled Icon'),
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text('Filled Tonal'),
            ),
            FilledButton.tonalIcon(
              onPressed: () {},
              icon: const Icon(Icons.flutter_dash),
              label: const Text('Filled Tonal Icon'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outline'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.terminal_rounded),
              label: const Text('Outline Icon'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text'),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.flutter_dash),
              label: const Text('Text icon'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
            ),
            IconButton.filled(
              onPressed: () {},
              icon: const Icon(Icons.dashboard_customize),
            ),
            IconButton.filledTonal(
              onPressed: () {},
              icon: const Icon(Icons.workspaces_rounded),
            ),
            IconButton.outlined(
              onPressed: () {},
              icon: const Icon(Icons.flutter_dash),
            ),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}
