import 'package:flutter/material.dart';

import '../../../data/model/home/package_model.dart';
import '../../../data/model/package_themes/themes_model.dart';
import '../../../data/model/profile/kid_profile_by_user_id_model.dart';
import '../../base/base_page.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_text_styles.dart';
import '../../widget/app_logo.dart';
import '../../widget/common_button/common_button.dart';
import '../choose_box/choose_box_screen.dart';

class ConfirmInfoScreen extends BasePage {
  const ConfirmInfoScreen({
    required this.package,
    required this.theme,
    required this.kid,
    super.key,
  });

  final Package package;
  final ThemesModel theme;
  final KidProfileByUserIdModel kid;

  @override
  BasePageState<ConfirmInfoScreen> createState() => _ConfirmInfoState();
}

class _ConfirmInfoState extends BasePageState<ConfirmInfoScreen> {
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Confirm'),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'Please Confirm the information carefully before going to next step',
              textAlign: TextAlign.center,
              style: AppTextStyles.s18w600.copyWith(color: Colors.pink),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                AppLogo(),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Kid's Name : ${widget.kid.fullName}",
                  style: AppTextStyles.s18w600.copyWith(color: AppColors.blue),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Package : ${widget.package.name}',
                  style: AppTextStyles.s18w600
                      .copyWith(color: AppColors.primaryButton1),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Theme : ${widget.theme.name}',
                  style: AppTextStyles.s18w600
                      .copyWith(color: AppColors.primaryButton1),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Price : ${widget.package.price}',
                  style: AppTextStyles.s26w600
                      .copyWith(color: AppColors.primaryButton1),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Expanded(
                  child: CommonButton(
                    onTap: () => Navigator.pop(context),
                    title: 'Previous',
                    width: null,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: CommonButton(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChooseBoxScreen(
                          package: widget.package,
                          theme: widget.theme,
                          kid: widget.kid,
                        ),
                      ),
                    ),
                    title: 'Next',
                    width: null,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
