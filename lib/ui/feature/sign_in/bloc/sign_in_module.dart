import '../../../../injection/injector.dart';
import '../../../bloc/ui_presenter.dart';
import 'sign_in_presenter.dart';

class SignInModule {
  static Future<void> inject() async {
    injector.registerFactory<SignInPresenter>(
      () => SignInPresenter(
        uiPresenter: injector.get<UiPresenter>(),
      ),
    );
  }
}
