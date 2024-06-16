import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import 'bloc/choose_box_presenter.dart';
import 'bloc/choose_box_state.dart';
import 'components/item_theme.dart';

class ChooseBoxScreen extends BasePage {
  const ChooseBoxScreen({super.key});

  @override
  BasePageState<ChooseBoxScreen> createState() => _ChooseBoxScreenState();
}

class _ChooseBoxScreenState extends BasePageState<ChooseBoxScreen> {
  final _chooseBoxPresenter = injector.get<ChooseBoxPresenter>();

  @override
  void onStateCreated() {
    super.onStateCreated();
    _getTheme();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Choose Box'),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return BlocBuilder<ChooseBoxPresenter, ChooseBoxState>(
      bloc: _chooseBoxPresenter,
      buildWhen: (previous, current) => false,
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) => ItemTheme(
            theme: state.themes[index],
          ),
          itemCount: state.themes.length,
        );
      },
    );
  }
}

extension on _ChooseBoxScreenState {
  Future<void> _getTheme() async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);
    await _chooseBoxPresenter.getTheme((error) {
      EasyLoading.showError(error.message ?? 'Error');
    });
    await EasyLoading.dismiss();
  }
}
