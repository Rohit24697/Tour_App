import 'package:flutter/material.dart';

Widget passwordField(String hintText) {
  return TextField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: hintText,
      border: OutlineInputBorder(),
      suffixIcon: Icon(Icons.visibility),
    ),
  );
}