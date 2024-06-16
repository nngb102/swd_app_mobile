import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import '../../resources/app_colors.dart';
import 'bloc/home_presenter.dart';
import 'components/body.dart';

class Home extends BasePage {
  const Home({Key? key}) : super(key: key);

  @override
  BasePageState<Home> createState() => _HomeState();
}

class _HomeState extends BasePageState<Home> {
  final _homePresenter = injector.get<HomePresenter>();

  @override
  void onStateCreated() {
    super.onStateCreated();
    _getPackage();
  }

  @override
  Color? backgroundColor(BuildContext context) {
    return AppColors.primary2;
  }

  @override
  Widget buildBody(BuildContext context) {
    return Body(
      homePresenter: _homePresenter,
    );
  }
}

extension on _HomeState {
  Future<void> _getPackage() async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);
    await _homePresenter.getPackage((error) {
      EasyLoading.showError(error.message ?? 'Error');
    });
    await EasyLoading.dismiss();
  }
}
