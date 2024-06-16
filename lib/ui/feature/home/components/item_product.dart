import 'package:flutter/material.dart';

import '../../../../data/model/home/package_model.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    required this.package,
    required this.onTap,
    super.key,
  });
  final Package package;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(5),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/card_package_1.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 5,
              top: 5,
              right: 5,
              left: 5,
              child: Container(
                height: 200,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      package.name ?? '',
                      style: AppTextStyles.s20w400.copyWith(
                        color: AppColors.blueText,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      package.description ?? '',
                      maxLines: 2,
                      style: AppTextStyles.s11w400,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${package.price ?? ''}  VND',
                      maxLines: 2,
                      style: AppTextStyles.s14w600.copyWith(
                        color: const Color(0xFFFFA451),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
