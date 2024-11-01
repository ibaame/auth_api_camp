import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String text;
  final IconData icon;
  final TextEditingController controller;
  const InputField(this.text, this.icon, this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      cursorWidth: 1,
      decoration: InputDecoration(
        suffixIcon: Icon(icon, color: Colors.grey),
        label: Text(
          text,
          style: const TextStyle(color: Colors.grey),
        ),
        filled: true,
        fillColor: const Color(0xffdee2e6),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(style: BorderStyle.none),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(style: BorderStyle.none),
        ),
      ),
    );
  }
}
