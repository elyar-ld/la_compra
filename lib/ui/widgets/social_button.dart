import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final ButtonType bt;

  const SocialButton({Key? key, required this.bt}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Map<ButtonType, Color> colors = {ButtonType.facebook: const Color(0xFF3b5998), ButtonType.google: const Color(0xFFDB4437)};
    Map<ButtonType, IconData> icons = {ButtonType.facebook: Icons.face, ButtonType.google: Icons.g_mobiledata};
    Map<ButtonType, String> tags = {ButtonType.facebook: 'Facebook', ButtonType.google: 'Google'};

    return SizedBox(
      width: 280,
      height: 45,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            foregroundColor: colors[bt],
            side: BorderSide(color: colors[bt]!, width: 3),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: () {},
        child: Row(
          children: [
            Icon(icons[bt]),
            Expanded(
                child: Text(
              tags[bt]!,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            )),
          ],
        ),
      ),
    );
  }
}

enum ButtonType {facebook, google}
