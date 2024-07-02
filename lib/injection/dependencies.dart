import '../ui/bloc/ui_module.dart';

import '../ui/feature/choose_box/bloc/choose_box_module.dart';
import '../ui/feature/choose_theme_and_kid/bloc/choose_theme_and_kid_module.dart';
import '../ui/feature/home/bloc/home_module.dart';

import '../ui/feature/kids_create/bloc/kid_create_module.dart';
import '../ui/feature/kids_profile/bloc/kid_profile_module.dart';
import '../ui/feature/orders/bloc/orders_module.dart';
import '../ui/feature/sign_in/bloc/sign_in_module.dart';
import '../ui/feature/sign_up/bloc/sign_up_module.dart';
import '../utilities/helpers/app_helper/app_flavor_helper.dart';
import '../utilities/helpers/app_helper/navigator_global_context_helper.dart';
import './app_modules.dart';
import './injector.dart';

class DependencyManager {
  static Future<void> inject(AppFlavor appFlavor) async {
    // App Flavor
    injector.registerLazySingleton<AppFlavor>(() => appFlavor);

    // Inject get current context
    injector.registerLazySingleton<NavigatorGlobalContextHelper>(
      () => NavigatorGlobalContextHelper(),
    );

    // App modules
    await AppModules.inject();

    //Home
    await HomeModule.inject();

    //SignIn
    await SignInModule.inject();

    // Ui
    await UiModule.inject();

    // SignUp
    await SignUpModule.inject();

    // Choose Theme AndKid
    await ChooseThemeAndKidModule.inject();

    // Choose Box
    await ChooseBoxModule.inject();

    // Kid Profile
    await KidProfileModule.inject();

    // Kid Create
    await KidCreateModule.inject();

    // Orders
    await OrdersModule.inject();
  }
}
