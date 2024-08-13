import 'package:flutter/material.dart';

void showCustomSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).clearSnackBars();
  final snackBar = SnackBar(
    action: SnackBarAction(
      label: 'Ok',
      onPressed: () {},
    ),
    content: const Text('Hola Mundo'),
    duration: const Duration(seconds: 2),
    width: MediaQuery.of(context).size.width * .8,
    padding: const EdgeInsets.symmetric(
      horizontal: 8,
    ),
    behavior: SnackBarBehavior.floating,
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    closeIconColor: Colors.yellow[900],
    dismissDirection: DismissDirection.startToEnd,
    showCloseIcon: true,
  );
  ScaffoldMessenger.of(context).showSnackBar(
    snackBar,
  );
}
