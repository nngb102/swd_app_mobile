import '../../../../injection/injector.dart';
import '../../../bloc/ui_presenter.dart';
import 'kid_profile_presenter.dart';

class KidProfileModule {
  static Future<void> inject() async {
    injector.registerFactory<KidProfilePresenter>(
      () => KidProfilePresenter(
        uiPresenter: injector.get<UiPresenter>(),
      ),
    );
  }
}
