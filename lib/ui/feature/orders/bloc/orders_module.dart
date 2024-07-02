import '../../../../injection/injector.dart';
import '../../../bloc/ui_presenter.dart';
import 'orders_presenter.dart';

class OrdersModule {
  static Future<void> inject() async {
    injector.registerFactory<OrdersPresenter>(
      () => OrdersPresenter(
        uiPresenter: injector.get<UiPresenter>(),
      ),
    );
  }
}
