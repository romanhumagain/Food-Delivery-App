import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isObscureText;
  final Icon? suffix_icon;
  final bool? togglePasswordShowIcon;

  const MyTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.isObscureText,
      this.suffix_icon,
      this.togglePasswordShowIcon});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  bool _isObscure = true;

  void togglePasswordShow() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  void initState() {
    super.initState();
    _isObscure = widget.isObscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        controller: widget.controller,
        obscureText: _isObscure,
        decoration: InputDecoration(
            suffixIcon: widget.togglePasswordShowIcon == true
                ? GestureDetector(
                    onTap: togglePasswordShow,
                    child: Icon(
                      _isObscure
                          ? Icons.visibility
                          : Icons.visibility_off, // Icon changes
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  )
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.primary, width: 2),
              borderRadius: BorderRadius.circular(12),
            ),
            hintText: widget.hintText,
            hintStyle:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary)
        ),
      ),
    );
  }
}
