import 'package:flutter/material.dart';

class CommonDateTime extends StatefulWidget {
  const CommonDateTime({
    required this.controller,
    this.onChanged,
    this.onTapSuffixIcon,
    super.key,
  });

  final Function(DateTime)? onChanged;

  final VoidCallback? onTapSuffixIcon;
  final TextEditingController controller;

  @override
  State<CommonDateTime> createState() => _CommonDateTimeState();
}

class _CommonDateTimeState extends State<CommonDateTime> {
  final FocusNode _focusNode = FocusNode();
  DateTime? finalDateTime;
  bool isEmptyDateTime = false;

  Future<void> _selectDateAndTime(BuildContext context) async {
    final pickedDate = await showDatePicker(
      helpText: '',
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null) {
      widget.onChanged?.call(pickedDate);
    }
  }

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(15),
    );
    return TextFormField(
      readOnly: true,
      onTap: () {
        _selectDateAndTime(context).then(
          (_) {
            Future.delayed(
              const Duration(milliseconds: 100),
              () {
                _focusNode.unfocus();
              },
            );
          },
        );
      },
      focusNode: _focusNode,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon: const Icon(Icons.date_range),
        hintText: 'YYY-MM-DD',
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}

extension on _CommonDateTimeState {
  // Widget get iconDefault => Opacity(
  //       opacity: widget.enable ? 1 : 0.32,
  //       child: Icon(
  //         Icons.calendar_month_outlined,
  //         color: context.colorScheme.onSurfaceVariant,
  //       ),
  //     );
  Widget get iconClose => Icon(Icons.close);
}
