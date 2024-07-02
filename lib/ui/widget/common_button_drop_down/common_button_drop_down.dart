import 'package:flutter/material.dart';

class CommonButtonDropDown extends StatefulWidget {
  const CommonButtonDropDown({
    required this.list,
    required this.hintText,
    required this.title,
    this.onSelected,
    this.width,
    super.key,
  });

  final List<String> list;
  final Function(String?)? onSelected;
  final String hintText;
  final String title;
  final double? width;

  @override
  State<CommonButtonDropDown> createState() => _CommonButtonDropDownState();
}

class _CommonButtonDropDownState extends State<CommonButtonDropDown> {
  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
      borderRadius: BorderRadius.circular(15),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.title),
        const SizedBox(
          height: 10,
        ),
        DropdownMenu<String>(
          width: widget.width ?? (MediaQuery.of(context).size.width - 60) / 2,
          hintText: widget.hintText,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            border: inputBorder,
            contentPadding: const EdgeInsets.all(8),
          ),
          onSelected: (value) => widget.onSelected?.call(value),
          dropdownMenuEntries:
              widget.list.map<DropdownMenuEntry<String>>((value) {
            return DropdownMenuEntry<String>(value: value, label: value);
          }).toList(),
        ),
      ],
    );
  }
}
