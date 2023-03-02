import 'package:flutter/material.dart';

/// Contoh penamaan Tinder
/// TDScaffold
/// TDElevatedButton
/// Don't use My..
///
class AltaElevatedButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback? onPressed;

  const AltaElevatedButton({Key? key, required this.buttonTitle, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.amber),
        ),
        onPressed: onPressed,
        child: Text(buttonTitle));
  }
}
