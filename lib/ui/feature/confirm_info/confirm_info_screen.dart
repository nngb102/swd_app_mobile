import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/home/package_model.dart';
import '../../../data/model/package_themes/themes_model.dart';
import '../../../data/model/profile/kid_profile_model.dart';
import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import '../../bloc/ui_presenter.dart';
import '../../bloc/ui_state.dart';
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
  final KidProfileModel kid;

  @override
  BasePageState<ConfirmInfoScreen> createState() => _ConfirmInfoState();
}

class _ConfirmInfoState extends BasePageState<ConfirmInfoScreen> {
  final _userPresenter = injector.get<UiPresenter>();
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Confirm'),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<UiPresenter, UiState>(
          bloc: _userPresenter,
          builder: (context, state) {
            return ListView(
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
                      SizedBox(height: 35, child: AppLogo()),
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Kid's Name : ${widget.kid.fullName}",
                        style: AppTextStyles.s18w600
                            .copyWith(color: AppColors.blue),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Parent's Name: ${state.user?.fullName ?? ''}",
                        style: AppTextStyles.s18w600
                            .copyWith(color: AppColors.primaryButton1),
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
                        'Phone Number : ${state.user?.phone ?? ''}',
                        style: AppTextStyles.s18w600
                            .copyWith(color: AppColors.primaryButton1),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Email : ${state.user?.email ?? ''}',
                        style: AppTextStyles.s18w600
                            .copyWith(color: AppColors.primaryButton1),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Address : ${state.user?.address ?? ''}',
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
            );
          }),
    );
  }
}
