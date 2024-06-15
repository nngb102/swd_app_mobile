import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/auth/result.dart';

import '../../../../data/model/source%20data/api_client.dart';
import 'home_state.dart';

class HomePresenter extends Cubit<HomeState> {
  HomePresenter({
    @visibleForTesting HomeState? state,
  }) : super(
          state ?? HomeState.initial(),
        );
  ApiClient apiClient = ApiClient(Dio());
  Future<void> getPackage() async {
    await Result.guardFuture(() async => apiClient.getPackage()).then(
      (value) => value.when(
        success: (data) {
          emit(state.copyWith(packages: data.packages));
        },
        failure: (error) {},
      ),
    );

    // emit(
    //   state.copyWith(productHome: [
    //     const (
    //         id: 1,
    //         name: 'abc',
    //         price: 20,
    //         initialPrice: 23,
    //         imageURL:
    //             'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
    //         saled: 10),
    //     const Data(
    //         id: 1,
    //         name: 'abc',
    //         price: 20,
    //         initialPrice: 23,
    //         imageURL:
    //             'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
    //         saled: 10),
    //     const Data(
    //         id: 1,
    //         name: 'abc',
    //         price: 20,
    //         initialPrice: 23,
    //         imageURL:
    //             'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
    //         saled: 10),
    //     const Data(
    //         id: 1,
    //         name: 'abc',
    //         price: 20,
    //         initialPrice: 23,
    //         imageURL:
    //             'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
    //         saled: 10),
    //     const Data(
    //         id: 1,
    //         name: 'abc',
    //         price: 20,
    //         initialPrice: 23,
    //         imageURL:
    //             'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
    //         saled: 10),
    //     const Data(
    //         id: 1,
    //         name: 'abc',
    //         price: 20,
    //         initialPrice: 23,
    //         imageURL:
    //             'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
    //         saled: 10),
    //     const Data(
    //         id: 1,
    //         name: 'abc',
    //         price: 20,
    //         initialPrice: 23,
    //         imageURL:
    //             'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg',
    //         saled: 10)
    //   ]),
  }
}
