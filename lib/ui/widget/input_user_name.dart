import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../feature/sign_in/bloc/sign_in_presenter.dart';
import '../feature/sign_in/bloc/sign_in_state.dart';
import 'text_field_input.dart';

class InputUserName extends StatelessWidget {
  const InputUserName({
    required this.signInPresenter,
    super.key,
  });
  final SignInPresenter signInPresenter;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInPresenter, SignInState>(
      bloc: signInPresenter,
      buildWhen: (previous, current) => previous.userName != current.userName,
      builder: (context, state) => TextFieldInput(
        hintText: 'UserName',
        isPass: false,
        textEditingController: signInPresenter.textEditingControllerUserName,
        onChanged: (value) => signInPresenter.inputUserName(value),
        textInputType: TextInputType.name,
      ),
    );
  }
}
