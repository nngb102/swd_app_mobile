import 'package:flutter/material.dart';

import '../../../../data/model/package_themes/themes_model.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';

class ItemTheme extends StatelessWidget {
  const ItemTheme({
    required this.theme,
    super.key,
  });
  final ThemesModel theme;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {},
        child: Container(
          height: 200,
          padding: const EdgeInsets.all(5),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/kid_theme.png',
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
                        theme.name ?? '',
                        style: AppTextStyles.s20w400.copyWith(
                          color: AppColors.blueText,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        theme.description ?? '',
                        maxLines: 2,
                        style: AppTextStyles.s11w400,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Text(
                      //   '${package.price ?? ''}  VND',
                      //   maxLines: 2,
                      //   style: AppTextStyles.s14w600.copyWith(
                      //     color: const Color(0xFFFFA451),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
