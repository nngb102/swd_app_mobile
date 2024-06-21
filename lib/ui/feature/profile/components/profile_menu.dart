import 'package:flutter/material.dart';

import '../../../resources/app_colors.dart';

class ProFileMenu extends StatelessWidget {
  const ProFileMenu({
    required this.txt,
    required this.icon,
    this.isShowIconTraining = false,
    Key? key,
  }) : super(key: key);

  final String txt;
  final IconData icon;
  final bool isShowIconTraining;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      margin: const EdgeInsets.only(bottom: 20, left: 25, right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: AppColors.primary,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppColors.red,
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              txt,
            ),
          ),
          Visibility(
              visible: isShowIconTraining,
              child: const Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}
