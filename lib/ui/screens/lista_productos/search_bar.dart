import 'dart:ui';

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: 315,
      child: TextFormField(
          enableSuggestions: false,
          decoration: InputDecoration(
            hintText: ("Buscar compra, comunidad, municipio"),
            hintStyle: TextStyle(fontSize: 13),
            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            suffixIcon: Icon(Icons.search),
          ),
        ),
    );
  }
}