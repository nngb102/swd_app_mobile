import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import '../../resources/app_colors.dart';
import '../../widget/app_logo.dart';
import '../../widget/common_button/common_button.dart';
import '../../widget/text_input/common_text_input.dart';

import '../home/home.dart';
import 'bloc/sign_up_presenter.dart';

class SignUpScreen extends BasePage {
  const SignUpScreen({super.key});

  @override
  BasePageState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends BasePageState<SignUpScreen> {
  TextEditingController textEditingControllerUserName = TextEditingController();
  TextEditingController textEditingControllerPassword = TextEditingController();
  TextEditingController textEditingControllerFullName = TextEditingController();
  TextEditingController textEditingControllerConfirmPassword =
      TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPhone = TextEditingController();
  TextEditingController textEditingControllerAddress = TextEditingController();

  final _signUpPresenter = injector.get<SignUpPresenter>();

  @override
  Color? backgroundColor(BuildContext context) => AppColors.primary2;

  @override
  bool get resizeToAvoidBottomInset => true;
  @override
  Widget buildBody(BuildContext context) {
    return _buildBody();
  }

  Padding _buildBody() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 30,
        right: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24,
            ),
            AppLogo(),
            const SizedBox(
              height: 50,
            ),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('User Name'),
                  const SizedBox(height: 10),
                  // Ô Nhập user name
                  CommonTextInput(
                    hintText: 'Enter your user name',
                    textEditingController: textEditingControllerUserName,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  const Text('Full Name'),
                  const SizedBox(height: 10),
                  // Ô Nhập Password
                  CommonTextInput(
                    hintText: 'Enter your full name',
                    textEditingController: textEditingControllerFullName,
                    onChanged: (value) {
                      _signUpPresenter.inputUserName(value);
                    },
                  ),
                  const SizedBox(height: 20),
                  const Text('Email'),
                  const SizedBox(height: 10),
                  // Ô Nhập Email
                  CommonTextInput(
                    isPass: true,
                    hintText: 'Enter your Email',
                    textEditingController: textEditingControllerEmail,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  const Text('Phone'),
                  const SizedBox(height: 10),
                  // Ô Nhập Email
                  CommonTextInput(
                    isPass: true,
                    hintText: 'Enter your Phone',
                    textEditingController: textEditingControllerPhone,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  const Text('Address'),
                  const SizedBox(height: 10),
                  // Ô Nhập Email
                  CommonTextInput(
                    isPass: true,
                    hintText: 'Enter your Address',
                    textEditingController: textEditingControllerAddress,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 20),
                  const Text('Password'),
                  const SizedBox(height: 10),
                  // Ô Nhập Confirm Password
                  CommonTextInput(
                    isPass: true,
                    hintText: 'Enter your password',
                    textEditingController: textEditingControllerPassword,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 40),

                  CommonButton(
                    onTap: () {
                      _signUp();
                    },
                    title: 'Sign Up',
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

extension on _SignUpScreenState {
  Future<void> _signUp() async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);
    await _signUpPresenter.onTapSignUp(
      onSuccessCallBack: () async {
        await EasyLoading.dismiss();

        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Home(),
          ),
        );
      },
      onErrorCallBack: (error) async {
        await EasyLoading.dismiss();
        return Future.delayed(
          const Duration(seconds: 1),
          () => Fluttertoast.showToast(
            msg: error.message ?? 'Error',
            toastLength: Toast.LENGTH_SHORT,
          ),
        );
      },
    );
  }
}
