import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_texts.dart';
import '../../widget/app_logo.dart';
import '../../widget/input_password.dart';
import '../../widget/input_user_name.dart';
import '../sign_up/sign_up_screen.dart';
import 'bloc/sign_in_presenter.dart';
import 'components/button_log_in.dart';

class SignIn extends BasePage {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _signInPresenter = injector.get<SignInPresenter>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
      ),
      body: _buildBody(),
    );
  }

  Padding _buildBody() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 30,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLogo(),
          const SizedBox(
            height: 50,
          ),
          Form(
            child: Column(
              children: [
                // Input username
                InputUserName(
                  signInPresenter: _signInPresenter,
                ),
                const SizedBox(height: 20),
                // Input Password
                InputPassword(
                  signInPresenter: _signInPresenter,
                ),
                const SizedBox(height: 15),
                const Row(
                  children: [
                    Spacer(),
                    Text(
                      AppTexts.forgotPassword,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: AppColors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                ButtonLogin(
                  signInPresenter: _signInPresenter,
                ),
                const SizedBox(height: 30),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                          '-----------------  Or sign up with  -----------------'),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/icons/google logo.svg'),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            AppTexts.google,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            AppTexts.notHaveAccount,
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              AppTexts.registerNow,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
