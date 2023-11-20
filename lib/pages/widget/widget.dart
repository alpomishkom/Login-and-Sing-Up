import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hinttext;
  final Text? label;
  final Widget? icon;
  final String? counttext;
  final String? Function(String?)? validatorr;

  const MyTextFormField({
    Key? key,
    this.hinttext,
    this.label,
    this.icon,
    this.counttext,
    this.controller, this.validatorr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIconColor: Colors.indigo,
        filled: false,
        fillColor: const Color.fromARGB(179, 241, 237, 237),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        label: label,
        prefixIcon: icon,
        counterText: counttext,
        counterStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black45,
          fontSize: 14,
        ),
        iconColor: Colors.blueAccent,
        labelStyle: const TextStyle(fontSize: 17, color: Colors.blueAccent),
        hintText: hinttext,
      ),
      validator: validatorr,
    );
  }
}
