import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zalopay_sdk/flutter_zalopay_sdk.dart';

import 'data/model/auth/result.dart';
import 'data/model/payment/amount_model.dart';
import 'data/model/payment/payment_response.dart';
import 'data/model/source data/api_client.dart';
import 'ui/resources/app_colors.dart';

class HomeZaloPay extends StatefulWidget {
  final String title;

  HomeZaloPay(this.title);

  @override
  _HomeZaloPayState createState() => _HomeZaloPayState();
}

class _HomeZaloPayState extends State<HomeZaloPay> {
  final textStyle = TextStyle(color: Colors.black54);
  final valueStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400);
  String zpTransToken = '';
  String payResult = '';
  String payAmount = '10000';
  bool showResult = false;
  ApiClient apiClient = ApiClient(Dio());

  @override
  void initState() {
    super.initState();
  }

  // Button Create Order
  Widget _btnCreateOrder(String value) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: GestureDetector(
          onTap: () async {
            int amount = int.parse(value);
            if (amount < 1000 || amount > 1000000) {
              setState(() {
                zpTransToken = 'Invalid Amount';
              });
            } else {
              // await showDialog(
              //     context: context,
              //     builder: (context) {
              //       return const Center(
              //         child: CircularProgressIndicator(),
              //       );
              //     });
              PaymentResponse? result;
              await Result.guardFuture(() async =>
                  apiClient.createPayment(AmountModel(amount: 500000))).then(
                (value) => value.when(
                  success: (data) {
                    result = data;
                  },
                  failure: (error) => {},
                ),
              );
              if (result != null) {
                // Navigator.pop(context);
                zpTransToken = result?.result.zpTransToken ?? '';
                print("zpTransToken $zpTransToken'.");
                setState(() {
                  zpTransToken = result?.result.zpTransToken ?? '';
                  showResult = true;
                });
              }
            }
          },
          child: Container(
              height: 50.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text('Create Order',
                  style: TextStyle(color: Colors.white, fontSize: 20.0))),
        ),
      );

  /// Build Button Pay
  Widget _btnPay(String zpToken) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Visibility(
        visible: showResult,
        child: GestureDetector(
          onTap: () async {
            await FlutterZaloPaySdk.payOrder(zpToken: zpToken).then((event) {
              setState(() {
                switch (event) {
                  case FlutterZaloPayStatus.cancelled:
                    payResult = 'User Huỷ Thanh Toán';
                    break;
                  case FlutterZaloPayStatus.success:
                    payResult = 'Thanh toán thành công';
                    break;
                  case FlutterZaloPayStatus.failed:
                    payResult = 'Thanh toán thất bại';
                    break;
                  default:
                    payResult = 'Thanh toán thất bại';
                    break;
                }
              });
            });
          },
          child: Container(
              height: 50.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text('Pay',
                  style: TextStyle(color: Colors.white, fontSize: 20.0))),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _quickConfig,
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Amount',
              icon: Icon(Icons.attach_money),
            ),
            initialValue: payAmount,
            onChanged: (value) {
              setState(() {
                payAmount = value;
              });
            },
            keyboardType: TextInputType.number,
          ),
          _btnCreateOrder(payAmount),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Visibility(
              child: Text(
                'zptranstoken:',
                style: textStyle,
              ),
              visible: showResult,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              zpTransToken,
              style: valueStyle,
            ),
          ),
          _btnPay(zpTransToken),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Visibility(
                child: Text('Transaction status:', style: textStyle),
                visible: showResult),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              payResult,
              style: valueStyle,
            ),
          ),
        ],
      ),
    );
  }
}

/// Build Info App
Widget _quickConfig = Container(
  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text('AppID: 2553'),
          ),
        ],
      ),
      // _btnQuickEdit,
    ],
  ),
);
