import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import '../../resources/app_colors.dart';
import '../../widget/common_button/common_button.dart';
import '../kids_create/kids_create_screen.dart';
import 'bloc/kid_profile_presenter.dart';
import 'bloc/kid_profile_state.dart';
import 'components/kids_profile_item.dart';

class KidsProfileScreen extends BasePage {
  const KidsProfileScreen({super.key});

  @override
  BasePageState<KidsProfileScreen> createState() => _KidsProfileScreenState();
}

class _KidsProfileScreenState extends BasePageState<KidsProfileScreen> {
  final _kidProfilePresenter = injector.get<KidProfilePresenter>();
  @override
  Color? backgroundColor(BuildContext context) {
    return const Color(0xFFF5F6F9);
  }

  @override
  void onStateCreated() {
    super.onStateCreated();
    _getKid();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary2,
      centerTitle: true,
      elevation: 0,
      title: const Text('Kids'),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          await _kidProfilePresenter.getKid(onErrorCallBack: (error) {
            EasyLoading.showError(error.message ?? 'Error');
          });
        },
        child: Column(
          children: [
            _buildListKids(),
            const SizedBox(
              height: 24,
            ),
            _buildButton()
          ],
        ),
      ),
    );
  }

  Padding _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Align(
        alignment: Alignment.bottomRight,
        child: CommonButton(
          width: 180,
          title: 'Create',
          onTap: () async {
            final message = await Navigator.push<String>(
              context,
              MaterialPageRoute(
                builder: (context) => const KidsCreateScreen(),
              ),
            );
            if (message is String) {
              await Fluttertoast.showToast(
                msg: 'Sign up success',
                toastLength: Toast.LENGTH_SHORT,
              );
              await _getKid();
            }
          },
        ),
      ),
    );
  }

  Widget _buildListKids() {
    return BlocBuilder<KidProfilePresenter, KidProfileState>(
      bloc: _kidProfilePresenter,
      builder: (context, state) {
        return Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: state.kidProfileByUserIdModel.length,
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) => KisProfileItem(
              name: state.kidProfileByUserIdModel[index].fullName ?? '',
              birth: state.kidProfileByUserIdModel[index].yob ?? '',
              gender: state.kidProfileByUserIdModel[index].gender ?? '',
            ),
            separatorBuilder: (context, index) => const Divider(
              height: 0.5,
            ),
          ),
        );
      },
    );
  }
}

extension on _KidsProfileScreenState {
  Future<void> _getKid() async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);

    await _kidProfilePresenter.getKid(onErrorCallBack: (error) {
      EasyLoading.showError(error.message ?? 'Error');
    });
    await EasyLoading.dismiss();
  }
}
