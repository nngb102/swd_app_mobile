import 'package:flutter/material.dart';

import '../../base/base_page.dart';
import '../../resources/app_colors.dart';
import '../../resources/app_texts.dart';
import '../../widget/button_common.dart';
import '../orders/orders_screen.dart';
import '../primary/primary.dart';

class PaySuccessScreen extends BasePage {
  const PaySuccessScreen({required this.text, Key? key}) : super(key: key);

  final String text;

  @override
  State<PaySuccessScreen> createState() => _PaySuccessState();
}

class _PaySuccessState extends State<PaySuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primary,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Primary()));
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: SafeArea(
        child: Container(
          height: 230,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          color: AppColors.primary,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.task_alt_outlined,
                    color: AppColors.white,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    widget.text,
                    style: const TextStyle(
                      fontSize: 23,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppTexts.handlerProduct,
                style: TextStyle(color: AppColors.white),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonCommon(
                    txt: 'Hủy Đơn Hàng',
                    onTap: () {},
                    colorButton: AppColors.primaryButton2,
                    colorText: AppColors.white,
                    colorBorder: AppColors.primaryButton2,
                    width: 160,
                  ),
                  ButtonCommon(
                    txt: 'Xem chi tiết đơn hàng',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrdersScreen(),
                        ),
                      );
                    },
                    colorButton: AppColors.primaryButton2,
                    colorText: AppColors.white,
                    colorBorder: AppColors.primaryButton2,
                    width: 160,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
