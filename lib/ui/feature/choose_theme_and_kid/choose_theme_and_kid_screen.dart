import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../data/model/home/package_model.dart';
import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import '../../widget/common_button/common_button.dart';
import '../confirm_info/confirm_info_screen.dart';
import '../kids_create/kids_create_screen.dart';
import 'bloc/choose_theme_and_kid_presenter.dart';
import 'bloc/choose_theme_and_kid_state.dart';
import 'components/kid_list.dart';
import 'components/theme_list.dart';

class ChooseThemeAndKidScreen extends BasePage {
  const ChooseThemeAndKidScreen({
    required this.package,
    super.key,
  });

  final Package package;

  @override
  BasePageState<ChooseThemeAndKidScreen> createState() =>
      _ChooseThemeAndKidScreenState();
}

class _ChooseThemeAndKidScreenState
    extends BasePageState<ChooseThemeAndKidScreen> {
  final _chooseThemeAndKidPresenter =
      injector.get<ChooseThemeAndKidPresenter>();

  @override
  void onStateCreated() {
    super.onStateCreated();
    _getTheme();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Choose Theme and Kid'),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Choose Theme',
              style: TextStyle(color: Color(0xFFFF5C84)),
            ),
            const SizedBox(
              height: 10,
            ),
            _buildThemeList(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Choose Kid',
              style: TextStyle(color: Color(0xFFFF5C84)),
            ),
            const SizedBox(
              height: 10,
            ),
            _buildKidList(),
            _buildButton(),
            const SizedBox(
              height: 24,
            )
          ],
        ),
      ),
    );
  }

  BlocBuilder<ChooseThemeAndKidPresenter, ChooseThemeAndKidState>
      _buildButton() {
    return BlocBuilder<ChooseThemeAndKidPresenter, ChooseThemeAndKidState>(
      bloc: _chooseThemeAndKidPresenter,
      builder: (context, state) {
        return CommonButton(
          enable: _chooseThemeAndKidPresenter.state.isEnable,
          title: 'Next',
          onTap: () async {
            await EasyLoading.show(
                maskType: EasyLoadingMaskType.black, dismissOnTap: false);
            await _chooseThemeAndKidPresenter.updateProfile(
              onSuccessCallBack: () async {
                await EasyLoading.dismiss();
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmInfoScreen(
                      package: widget.package,
                      theme: state.themeSelected!,
                      kid: state.kidSelected!,
                    ),
                  ),
                );
              },
              onErrorCallBack: (error) async {
                await EasyLoading.dismiss();
                await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Error'),
                      content: Text(error.message ?? ''),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        )
                      ],
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  BlocBuilder<ChooseThemeAndKidPresenter, ChooseThemeAndKidState>
      _buildKidList() {
    return BlocBuilder<ChooseThemeAndKidPresenter, ChooseThemeAndKidState>(
      bloc: _chooseThemeAndKidPresenter,
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) => KidList(
        kids: _chooseThemeAndKidPresenter.state.kidProfileByUserIdModel,
        onTap: (value) => _chooseThemeAndKidPresenter.chooseKid(value),
        kidSelected: _chooseThemeAndKidPresenter.state.kidSelected,
      ),
    );
  }

  BlocBuilder<ChooseThemeAndKidPresenter, ChooseThemeAndKidState>
      _buildThemeList() {
    return BlocBuilder<ChooseThemeAndKidPresenter, ChooseThemeAndKidState>(
      bloc: _chooseThemeAndKidPresenter,
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) => ThemeList(
          themes: _chooseThemeAndKidPresenter.state.themes,
          themesSelected: _chooseThemeAndKidPresenter.state.themeSelected,
          onTap: (value) {
            _chooseThemeAndKidPresenter.chooseTheme(value);
          }),
    );
  }
}

extension on _ChooseThemeAndKidScreenState {
  Future<void> _getTheme() async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);
    await _chooseThemeAndKidPresenter.getTheme((error) {
      EasyLoading.showError(error.message ?? 'Error');
    });
    await _chooseThemeAndKidPresenter.getKid(onSuccess: () async {
      await EasyLoading.dismiss();
      await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: const Text('You need to create Kid first'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KidsCreateScreen()));
                },
                child: const Text('OK'),
              )
            ],
          );
        },
      );
    }, onErrorCallBack: (error) {
      EasyLoading.showError(error.message ?? 'Error');
    });
    await EasyLoading.dismiss();
  }
}
