import 'package:flutter/material.dart';

import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import '../../bloc/ui_presenter.dart';
import '../../resources/app_colors.dart';
import '../kids_profile/kids_profile_screen.dart';
import '../sign_in/sign_in.dart';
import 'components/profile_menu.dart';

class ProfileScreen extends BasePage {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  BasePageState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends BasePageState<ProfileScreen> {
  final user = injector.get<UiPresenter>().state.user;
  @override
  Color? backgroundColor(BuildContext context) {
    return AppColors.primary2;
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.primary2,
      centerTitle: true,
      elevation: 0,
      title: const Text(
        'Profile',
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              height: 115,
              width: 115,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 40),
              child: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://lzd-img-global.slatic.net/g/p/6cee81e88ef9fcc5890c45298dcd7dde.jpg_720x720q80.jpg_.webp',
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: -10,
                    child: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.white,
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.camera_alt),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ProFileMenu(
            icon: Icons.people,
            txt: user?.fullName ?? '',
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const KidsProfileScreen(),
              ),
            ),
            child: const ProFileMenu(
              isShowIconTraining: true,
              icon: Icons.child_care,
              txt: 'Kids',
            ),
          ),
          ProFileMenu(
            icon: Icons.mail_outline,
            txt: user?.email ?? '',
          ),
          ProFileMenu(
            icon: Icons.phone,
            txt: user?.phone ?? '',
          ),
          ProFileMenu(
            icon: Icons.location_on_outlined,
            txt: user?.address ?? '',
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignIn(),
              ),
            ),
            child: const ProFileMenu(
              icon: Icons.logout,
              txt: 'Log Out',
            ),
          ),
        ],
      ),
    );
  }
}
