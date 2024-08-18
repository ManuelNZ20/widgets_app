import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/ui_controls_provider.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI_Controls Screen'),
      ),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends ConsumerWidget {
  const _UIControlsView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDeveloper = ref.watch(isDeveloperProvider);
    final transportation = ref.watch(transportationProvider);
    final wantsBreakfast = ref.watch(wantsBreakfastProvider);
    final wantsLunch = ref.watch(wantsLunchProvider);
    final wantsDinner = ref.watch(wantsDinnerProvider);
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper,
          onChanged: (value) => ref.read(isDeveloperProvider.notifier).update(
                (state) => !state,
              ),
        ),
        ExpansionTile(
          title: const Text('Vehículo de transporte'),
          subtitle: Text('$transportation'),
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car,
              groupValue: transportation,
              onChanged: (value) =>
                  ref.watch(transportationProvider.notifier).update(
                        (state) => Transportation.car,
                      ),
            ),
            RadioListTile(
              title: const Text('By Boat'),
              subtitle: const Text('Viajar por barco'),
              value: Transportation.boat,
              groupValue: transportation,
              onChanged: (value) =>
                  ref.watch(transportationProvider.notifier).update(
                        (state) => Transportation.boat,
                      ),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por avión'),
              value: Transportation.plane,
              groupValue: transportation,
              onChanged: (value) =>
                  ref.watch(transportationProvider.notifier).update(
                        (state) => Transportation.plane,
                      ),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: transportation,
              onChanged: (value) =>
                  ref.watch(transportationProvider.notifier).update(
                        (state) => Transportation.submarine,
                      ),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('¿Desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => ref
              .read(wantsBreakfastProvider.notifier)
              .update((state) => !state),
        ),
        CheckboxListTile(
          title: const Text('¿Almuerzo?'),
          value: wantsLunch,
          onChanged: (value) =>
              ref.read(wantsLunchProvider.notifier).update((state) => !state),
        ),
        CheckboxListTile(
          title: const Text('¿Cena?'),
          value: wantsDinner,
          onChanged: (value) =>
              ref.read(wantsDinnerProvider.notifier).update((state) => !state),
        ),
      ],
    );
  }
}
