import 'package:flutter/material.dart';

import '../theme/theme_constants.dart';

class MainButton extends StatelessWidget {
  final String tag;
  final double? width;
  final VoidCallback myFunction;

  const MainButton({Key? key, required this.tag, this.width, required this.myFunction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 280,
      height: 45,
      child: ElevatedButton(
        onPressed: myFunction,
        style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Text(
          tag,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
