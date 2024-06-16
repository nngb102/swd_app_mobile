import '../../../../injection/injector.dart';
import 'choose_box_presenter.dart';

class ChooseBoxModule {
  static Future<void> inject() async {
    injector.registerFactory<ChooseBoxPresenter>(
      () => ChooseBoxPresenter(
      
      ),
    );
  }
}
