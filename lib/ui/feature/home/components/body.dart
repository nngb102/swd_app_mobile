import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/model/pagesale/sale.dart';
import '../../../resources/app_colors.dart';

import '../../../widget/app_logo.dart';
import '../../choose_theme_and_kid/choose_theme_and_kid_screen.dart';
import '../bloc/home_presenter.dart';
import '../bloc/home_state.dart';
import 'item_product.dart';

class Body extends StatelessWidget {
  const Body({
    required this.homePresenter,
    super.key,
  });

  final HomePresenter homePresenter;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppLogo(),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  child: PageView.builder(
                    itemCount: sale.length,
                    itemBuilder: (context, index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        sale[index].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      6,
                      (index) => Container(
                        width: 6,
                        height: 6,
                        margin: const EdgeInsets.only(left: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: AppColors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    'Recommend',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                HomeGetListProduct(
                  homePresenter: homePresenter,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeGetListProduct extends StatelessWidget {
  const HomeGetListProduct({
    required this.homePresenter,
    super.key,
  });
  final HomePresenter homePresenter;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePresenter, HomeState>(
      bloc: homePresenter,
      builder: (context, state) => SizedBox(
        height: 200,
        child: ListView.builder(
          itemCount: state.packages.length,
          itemBuilder: (context, index) => ItemProduct(
            package: state.packages[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChooseThemeAndKidScreen(
                    package: state.packages[index],
                  ),
                ),
              );
            },
          ),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
