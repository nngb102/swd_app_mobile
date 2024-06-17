import '../../../../injection/injector.dart';
import 'choose_theme_and_kid_presenter.dart';

class ChooseThemeAndKidModule {
  static Future<void> inject() async {
    injector.registerFactory<ChooseThemeAndKidPresenter>(
      () => ChooseThemeAndKidPresenter(),
    );
  }
}
