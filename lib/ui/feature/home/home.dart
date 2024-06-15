import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import 'bloc/home_presenter.dart';
import 'components/body.dart';

class Home extends BasePage {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _homePresenter = injector.get<HomePresenter>();
  @override
  void initState() {
    _getPackage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Body(
      homePresenter: _homePresenter,
    );
  }
}

extension on _HomeState {
  Future<void> _getPackage() async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);
    await _homePresenter.getPackage();
    await EasyLoading.dismiss();
  }
}
