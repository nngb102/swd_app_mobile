import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: depend_on_referenced_packages

import '../../../resources/app_colors.dart';
import '../../primary/primary.dart';
import '../bloc/sign_in_presenter.dart';
import '../bloc/sign_in_state.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    required this.signInPresenter,
    super.key,
  });

  final SignInPresenter signInPresenter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInPresenter, SignInState>(
      bloc: signInPresenter,
      builder: (context, state) => GestureDetector(
        onTap: () async {
          /// Nếu email hoặc password rỗng thì hiển thị thông báo
          if (state.userName.isEmpty || state.password.isEmpty) {
            return showToast('vui lòng nhập email và mật khẩu của bạn');
          } else {
            await EasyLoading.show(
                maskType: EasyLoadingMaskType.black, dismissOnTap: false);

            await signInPresenter.onTapSignIn(
              onSuccessCallBack: () async {
                await EasyLoading.dismiss();
                return Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Primary(),
                  ),
                );
              },
              onErrorCallBack: (error) async {
                await EasyLoading.dismiss();
                return Future.delayed(
                  const Duration(seconds: 1),
                  () {
                    if (error.statusCode == 401) {
                      return Fluttertoast.showToast(
                        msg: 'Người dùng không tồn tại',
                        toastLength: Toast.LENGTH_SHORT,
                      );
                    }
                    return Fluttertoast.showToast(
                      msg: error.message ?? 'Lỗi đăng nhập, vui lòng thử lại!',
                      toastLength: Toast.LENGTH_SHORT,
                    );
                  },
                );
              },
            );
          }
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.primaryButton1),
          child: const Center(
            child: Text(
              'Login',
              style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> showToast(String msg) async {
    await Fluttertoast.showToast(msg: msg, toastLength: Toast.LENGTH_SHORT);
    await Future.delayed(
      const Duration(seconds: 1),
    );
  }
}
