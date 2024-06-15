import 'package:flutter/material.dart';

import '../text_field_input.dart';

class CommonTextInput extends StatelessWidget {
  const CommonTextInput({
    required this.textEditingController,
    required this.onChanged,
    super.key,
    this.hintText = '',
    this.isPass = false,
  });

  final TextEditingController textEditingController;
  final Function(String value) onChanged;
  final String hintText;
  final bool isPass;

  @override
  Widget build(BuildContext context) {
    return TextFieldInput(
      hintText: hintText,
      isPass: false,
      textEditingController: textEditingController,
      onChanged: onChanged,
      textInputType: TextInputType.emailAddress,
    );
  }
}
