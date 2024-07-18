import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_zalopay_sdk/flutter_zalopay_sdk.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../data/model/home/package_model.dart';
import '../../../data/model/package_themes/themes_model.dart';
import '../../../data/model/profile/kid_profile_model.dart';
import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import '../../widget/app_logo.dart';
import '../../widget/common_button/common_button.dart';
import '../pay_success/pay_success_screen.dart';
import 'bloc/choose_box_presenter.dart';
import 'bloc/choose_box_state.dart';
import 'componets/box_list.dart';

class ChooseBoxScreen extends BasePage {
  const ChooseBoxScreen({
    required this.package,
    required this.theme,
    required this.kid,
    super.key,
  });

  final Package package;
  final ThemesModel theme;
  final KidProfileModel kid;

  @override
  BasePageState<ChooseBoxScreen> createState() => _ChooseBoxState();
}

class _ChooseBoxState extends BasePageState<ChooseBoxScreen> {
  final _chooseBox = injector.get<ChooseBoxPresenter>();

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
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: ListView(
                children: [
                  AppLogo(),
                  const SizedBox(
                    height: 24,
                  ),
                  BlocBuilder<ChooseBoxPresenter, ChooseBoxState>(
                    bloc: _chooseBox,
                    buildWhen: (previous, current) => previous != current,
                    builder: (context, state) {
                      return BoxList(
                          boxs: state.mysteryBoxs,
                          boxSelected: state.boxSelected,
                          onTap: _chooseBox.chooseBox);
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
          BlocBuilder<ChooseBoxPresenter, ChooseBoxState>(
              bloc: _chooseBox,
              buildWhen: (previous, current) => previous != current,
              builder: (context, state) {
                return Visibility(
                  visible: state.boxSelected != null,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: CommonButton(
                        onTap: () async {
                          await _payment(onSuccessCallBack: () async {
                            await _addOrder();
                          });
                        },
                        title:
                            'Price : ${state.boxSelected?.priceAvarage ?? ''}'),
                  ),
                );
              })
        ],
      ),
    );
  }
}

extension on _ChooseBoxState {
  Future<void> _getTheme() async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);
    await _chooseBox.getMysteryBox((error) {
      EasyLoading.showError(error.message ?? 'Error');
    });

    await EasyLoading.dismiss();
  }

  Future<void> _payment({required Function() onSuccessCallBack}) async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);
    await _chooseBox.payment(
      onSuccessCallBack: (data) async {
        await FlutterZaloPaySdk.payOrder(
                zpToken: data.result.zpTransToken ?? '')
            .then((event) {
          // ignore: invalid_use_of_protected_member
          setState(() {
            switch (event) {
              case FlutterZaloPayStatus.cancelled:
                Fluttertoast.showToast(
                  msg: 'User Huỷ Thanh Toán',
                  toastLength: Toast.LENGTH_SHORT,
                );
                break;
              case FlutterZaloPayStatus.success:
                onSuccessCallBack.call();
                break;
              case FlutterZaloPayStatus.failed:
                Fluttertoast.showToast(
                  msg: 'Thanh toán thất bại',
                  toastLength: Toast.LENGTH_SHORT,
                );
                break;
              default:
                Fluttertoast.showToast(
                  msg: 'Thanh toán thất bại',
                  toastLength: Toast.LENGTH_SHORT,
                );

                break;
            }
          });
        });
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
  }

  Future<void> _addOrder() async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);
    await _chooseBox.addOrderPackage(
      kidId: widget.kid.id,
      packageId: widget.package.id,
      nameOfKid: widget.kid.fullName ?? '',
      onSuccessCallBack: () async {
        await EasyLoading.dismiss();
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const PaySuccessScreen(text: 'PaySuccessScreen'),
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
  }
}
