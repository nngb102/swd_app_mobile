import '../../../../injection/injector.dart';
import '../../../bloc/ui_presenter.dart';
import 'kid_create_presenter.dart';

class KidCreateModule {
  static Future<void> inject() async {
    injector.registerFactory<KidCreatePresenter>(
      () => KidCreatePresenter(
        uiPresenter: injector.get<UiPresenter>(),
      ),
    );
  }
}
