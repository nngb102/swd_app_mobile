import 'package:flutter/material.dart';

import '../text_field_input.dart';

class CommonTextInput extends StatelessWidget {
  const CommonTextInput({
    required this.textEditingController,
    required this.onChanged,
    this.textInputType = TextInputType.text,
    super.key,
    this.hintText = '',
    this.isPass = false,
  });

  final TextEditingController textEditingController;
  final Function(String value) onChanged;
  final String hintText;
  final bool isPass;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFieldInput(
      hintText: hintText,
      isPass: isPass,
      textEditingController: textEditingController,
      onChanged: onChanged,
      textInputType: textInputType,
    );
  }
}
