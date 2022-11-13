import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String tag;
  final TextInputType ktype;
  final bool isObscure;

  const TextInput({Key? key, required this.tag, required this.ktype, required this.isObscure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tag),
        const SizedBox(height: 5,),
        TextFormField(
          enableSuggestions: false,
          keyboardType: ktype,
          obscureText: isObscure,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ),
      ],
    );
  }
}
