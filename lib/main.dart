// import 'package:swd_app_mobile/ui/feature/detail/detail.dart';
// import 'package:swd_app_mobile/ui/feature/home/home.dart';
// import 'package:swd_app_mobile/ui/feature/pay/pay.dart';
// import 'package:swd_app_mobile/ui/feature/primary/primary.dart';
// import 'package:swd_app_mobile/ui/feature/profile/profile.dart';
// import 'package:swd_app_mobile/ui/feature/sign_in/sign_in.dart';
// import 'package:swd_app_mobile/ui/feature/pay/pay.dart';
// import 'package:swd_app_mobile/ui/feature/primary/primary.dart';
// import 'package:swd_app_mobile/ui/feature/sign_in/sign_in.dart';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'injection/dependencies.dart';
import 'ui/feature/home/home.dart';
import 'ui/feature/primary/primary.dart';
import 'ui/feature/sign_in/sign_in.dart';
import 'ui/feature/sign_up/sign_up_screen.dart';
import 'utilities/helpers/app_helper/app_flavor_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  mainCommon();
}

Future<void> mainCommon() async {
  // await Firebase.initializeApp();
  await DependencyManager.inject(AppFlavor.development);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: SignIn());
  }
}
