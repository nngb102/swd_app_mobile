import '../../../../injection/injector.dart';
import '../../../bloc/ui_presenter.dart';
import 'sign_up_presenter.dart';

class SignUpModule {
  static Future<void> inject() async {
    injector.registerFactory<SignUpPresenter>(
      () => SignUpPresenter(
        uiPresenter: injector.get<UiPresenter>(),
      ),
    );
  }
}
