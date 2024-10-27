import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  final bool obscure;
  final String text;

  const Field({
    super.key,
    required this.obscure,
    required this.text,
  });

  @override
  _FieldState createState() => _FieldState();
}

class _FieldState extends State<Field> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscure; // Initialize with the passed obscure value
  }

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        suffixIcon: widget.obscure // Show the icon only if it's a password field
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: _toggleVisibility,
              )
            : null,
        labelText: widget.text,
      ),
    );
  }
}

