import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../config/config.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar';
  const SnackBarScreen({super.key});
  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        /* Se contruye en tiempo de ejecución */
        return AlertDialog(
          title: const Text('¿Estas seguro?'),
          content: const Text('Este es un openDialog'),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Cancelar'),
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: /* me permite mostrar e indicar donde esta ese scaffold */,
      appBar: AppBar(
        title: const Text('Snackbar Screen'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                    'Labore laborum enim officia exercitation nostrud non do fugiat occaecat duis laborum nisi pariatur occaecat. Sunt sit laborum officia et enim consequat aliqua dolore exercitation aliquip consectetur id voluptate ea. Occaecat sunt amet est esse deserunt officia.',
                  )
                ]);
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo'),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.view_comfy),
      ),
    );
  }
}
