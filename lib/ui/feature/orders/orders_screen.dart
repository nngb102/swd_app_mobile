import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../injection/injector.dart';
import '../../base/base_page.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_text_styles.dart';
import '../../widget/app_logo.dart';
import 'bloc/orders_presenter.dart';
import 'bloc/orders_state.dart';

class OrdersScreen extends BasePage {
  const OrdersScreen({super.key});

  @override
  BasePageState<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends BasePageState<OrdersScreen> {
  final _ordersPresenter = injector.get<OrdersPresenter>();
  @override
  void onStateCreated() {
    super.onStateCreated();
    _getPackageOrders();
  }

  @override
  Color? backgroundColor(BuildContext context) {
    return const Color(0xFFF5F6F9);
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.primary2,
      centerTitle: true,
      elevation: 0,
      title: const Text('Orders'),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () async {
          // await _getGroupsUser(isShowLoading: false);
        },
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(height: 60, child: AppLogo()),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: BlocBuilder<OrdersPresenter, OrdersState>(
                bloc: _ordersPresenter,
                builder: (context, state) {
                  final packageOrders = state.packageOrders;
                  return ListView.builder(
                      itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 9),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 12),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.black.withOpacity(0.3),
                                  offset: const Offset(0, 1),
                                  blurRadius: 3,
                                ),
                                BoxShadow(
                                  color: AppColors.black.withOpacity(0.15),
                                  offset: const Offset(0, 4),
                                  blurRadius: 8,
                                  spreadRadius: 3,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'Đơn hàng:',
                                      style: AppTextStyles.s14w600,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                        'Đơn hàng ${packageOrders[index].id ?? ''}')
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'NameOfKid:',
                                      style: AppTextStyles.s14w600,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(packageOrders[index].nameOfKid ?? '')
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Address:',
                                      style: AppTextStyles.s14w600,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(packageOrders[index].address ?? '')
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Package:',
                                      style: AppTextStyles.s14w600,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      getPackageName(
                                          packageOrders[index].packageId ?? 1),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'TotalPrice:',
                                      style: AppTextStyles.s14w600,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(packageOrders[index].totalPrice ?? '')
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Status:',
                                      style: AppTextStyles.s14w600,
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(packageOrders[index].status ?? '')
                                  ],
                                )
                              ],
                            ),
                          ),
                      itemCount: state.packageOrders.length);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension on _OrdersScreenState {
  Future<void> _getPackageOrders() async {
    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black, dismissOnTap: false);

    await _ordersPresenter.getPackageOrders(onErrorCallBack: (error) {
      EasyLoading.showError(error.message ?? 'Error');
    });
    await EasyLoading.dismiss();
  }

  String getPackageName(int packageId) {
    switch (packageId) {
      case 6:
        return 'Package 2';
      case 7:
        return 'Package 3';
      case 8:
        return 'Package 4';
      default:
        return 'Package 1';
    }
  }
}
