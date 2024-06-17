import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    required this.title,
    super.key,
    this.onTap,
    this.width = double.infinity,
    this.enable = true,
  });

  final Function()? onTap;
  final String title;
  final bool enable;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (enable) {
          onTap?.call();
        }
      },
      child: Container(
        width: width,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: enable ? Colors.blue : Colors.grey,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
