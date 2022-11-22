import 'package:flutter/material.dart';

class BottomMenuItem extends StatelessWidget {
  final IconData icon;
  final String tag;
  final bool? selected;
  final VoidCallback callback;

  const BottomMenuItem(
      {Key? key,
      required this.icon,
      required this.tag,
      this.selected,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white.withOpacity(0.0),
        child: InkWell(
          onTap: callback,
          child: DefaultTextStyle.merge(
            style: TextStyle(color: Colors.white, fontSize: 16),
            child: Container(
              color: selected != null ? Color(0xFFA82018) : Colors.transparent,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(tag),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
