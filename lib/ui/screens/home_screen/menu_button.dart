import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  
  const MenuButton({
    Key? key, required this.text, required this.icon, required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Ink(
        height: 65,
        color: color,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Expanded(child: Text(text, style: const TextStyle(color: Colors.white, fontSize: 20),)),
              Icon(icon, color: Colors.white, size: 40,)
          ],),
        )
      ),
    );
  }
}