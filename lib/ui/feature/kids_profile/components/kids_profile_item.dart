import 'package:flutter/material.dart';

import '../../../resources/app_colors.dart';

class KisProfileItem extends StatelessWidget {
  const KisProfileItem({
    required this.name,
    required this.birth,
    required this.gender,
    super.key,
    this.onPressed,
  });

  final String name;
  final String birth;
  final String gender;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      padding: const EdgeInsets.only(left: 24, top: 12, bottom: 12, right: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Birth : $birth'),
                    const SizedBox(
                      width: 10,
                    ),
                    Text('Gender : $gender'),
                  ],
                )
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          )
        ],
      ),
    );
  }
}
