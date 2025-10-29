import 'package:flutter/material.dart';
import 'package:hungry/constants/app_colors.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.iSPassword,
    required this.controller,
  });
  final String hint;
  final bool iSPassword;
  final TextEditingController controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _obscureText;
  @override
  void initState() {
    _obscureText = widget.iSPassword;
  }

  void _togglePassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      cursorColor: AppColors.primaryColor,
      validator: (v) {
        if (v == null || v.isEmpty) {
          return 'please fill ${widget.hint}';
        }
        null;
      },
      obscureText: _obscureText,
      decoration: InputDecoration(
        suffixIcon: widget.iSPassword
            ? GestureDetector(
                onTap: _togglePassword,
                child: Icon(Icons.remove_red_eye),
              )
            : null,
        hintText: widget.hint,
        filled: true,
        fillColor: Colors.white,

        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
