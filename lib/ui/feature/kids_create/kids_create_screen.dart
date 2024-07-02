import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../injection/injector.dart';
import '../../../utilities/extensions/date_time_ext.dart';
import '../../base/base_page.dart';
import '../../resources/app_colors.dart';

import '../../widget/common_button/common_button.dart';
import '../../widget/common_button_drop_down/common_button_drop_down.dart';
import '../../widget/common_date_time/common_date_time.dart';
import '../../widget/text_input/common_text_input.dart';

import 'bloc/kid_create_presenter.dart';
import 'bloc/kid_create_state.dart';

class KidsCreateScreen extends BasePage {
  const KidsCreateScreen({super.key});

  @override
  BasePageState<KidsCreateScreen> createState() => _KidsCreateScreenState();
}

class _KidsCreateScreenState extends BasePageState<KidsCreateScreen> {
  TextEditingController textEditingControllerUserName = TextEditingController();
  TextEditingController textEditingControllerBirth = TextEditingController();
  TextEditingController textEditingControllerFullName = TextEditingController();
  TextEditingController textEditingControllerConfirmPassword =
      TextEditingController();
  TextEditingController textEditingControllerEmail = TextEditingController();
  TextEditingController textEditingControllerPhone = TextEditingController();
  TextEditingController textEditingControllerAddress = TextEditingController();

  final _kidCreatePresenter = injector.get<KidCreatePresenter>();
  @override
  Color? backgroundColor(BuildContext context) => AppColors.primary2;

  @override
  bool get resizeToAvoidBottomInset => true;
  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Create Kid'),
      backgroundColor: AppColors.primary2,
      centerTitle: true,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return _buildBody();
  }

  BlocBuilder _buildBody() {
    return BlocBuilder<KidCreatePresenter, KidCreateState>(
      bloc: _kidCreatePresenter,
      builder: (context, state) => Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Full Name'),
                    const SizedBox(height: 10),
                    // Ô Nhập Full Name
                    CommonTextInput(
                      hintText: 'Enter your full name',
                      textEditingController: textEditingControllerFullName,
                      onChanged: (value) {
                        _kidCreatePresenter.inputFullName(value);
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text('Hobby'),
                    const SizedBox(height: 10),
                    // Ô Nhập Hobby
                    CommonTextInput(
                      hintText: 'Enter your Hobby',
                      textEditingController: textEditingControllerEmail,
                      onChanged: (value) {
                        _kidCreatePresenter.inputHobby(value);
                      },
                    ),

                    const SizedBox(height: 20),
                    const Text('Birth'),
                    const SizedBox(height: 10),
                    CommonDateTime(
                      controller: textEditingControllerBirth,
                      onChanged: (value) {
                        final birth = value.toDateString();
                        if (birth != null) {
                          textEditingControllerBirth.text = birth;
                          _kidCreatePresenter.inputBirth(birth);
                        }
                      },
                    ),
                    const SizedBox(height: 20),

                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonButtonDropDown(
                          onSelected: (value) {
                            _kidCreatePresenter.inputColor(value ?? '');
                          },
                          title: 'Choose Color',
                          list: const <String>[
                            'Màu đỏ',
                            'Màu cam',
                            'Màu đen',
                            'Màu xanh lá',
                            'Màu xanh dương'
                          ],
                          hintText: 'Color',
                        ),
                        CommonButtonDropDown(
                          onSelected: (value) {
                            _kidCreatePresenter.inputGender(value ?? '');
                          },
                          title: 'Choose Gender',
                          list: const <String>[
                            'MALE',
                            'FEMALE',
                            'OTHER',
                          ],
                          hintText: 'Gender',
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonButtonDropDown(
                          onSelected: (value) {
                            _kidCreatePresenter.inputMaterial(value ?? '');
                          },
                          title: 'Choose Material',
                          list: const <String>[
                            'Wood',
                            'Glass',
                            'Plastic',
                            'Aluminium',
                            'Copper',
                            'Steel',
                            'Cloth',
                            'Rubber',
                          ],
                          hintText: 'Material',
                        ),
                        CommonButtonDropDown(
                          onSelected: (value) {
                            _kidCreatePresenter.inputType(value ?? '');
                          },
                          title: 'Choose Type',
                          list: const <String>[
                            'Toys',
                            'Robot',
                            'Doll',
                            'Drum',
                            'Car',
                            'Balloon',
                            'Train',
                          ],
                          hintText: 'Type',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CommonButtonDropDown(
                      onSelected: (value) {
                        _kidCreatePresenter.inputMadeIn(value ?? '');
                      },
                      width: MediaQuery.of(context).size.width - 40,
                      title: 'Choose origin',
                      list: const <String>[
                        'Trung quốc',
                        'Hàn quốc',
                        'Mỹ',
                        'Đài loan',
                        'Việt nam',
                        'Thái lan',
                        'Singapore',
                      ],
                      hintText: 'Made In',
                    ),

                    const SizedBox(height: 40),

                    CommonButton(
                      onTap: () {
                        _createKid();
                      },
                      title: 'Sign Up',
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

extension on _KidsCreateScreenState {
  Future<void> _createKid() async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);
    await _kidCreatePresenter.onTapCreateKid(
      onSuccessCallBack: () async {
        await EasyLoading.dismiss();

        return Navigator.of(context).pop('success');
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
