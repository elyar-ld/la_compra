import 'package:flutter/material.dart';

class TextDropdown extends StatefulWidget {
  final String tag;
  final List<String> dpvalues;
  final void Function(String?)? dpCallback;
  final String currentValue;

  const TextDropdown(
      {Key? key,
      required this.tag,
      required this.dpvalues,
      required this.currentValue,
      required this.dpCallback})
      : super(key: key);

  @override
  State<TextDropdown> createState() => _TextDropdownState();
}

class _TextDropdownState extends State<TextDropdown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.tag),
        const SizedBox(
          height: 5,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.black38, width: 1), 
              borderRadius:
                  BorderRadius.circular(15),
              ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: DropdownButton(
              value: widget.currentValue,
              icon: const Icon(Icons.keyboard_arrow_down),
              isExpanded: true,
              items: widget.dpvalues.map((String item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: widget.dpCallback,
            ),
          ),
        ),
      ],
    );
  }
}
