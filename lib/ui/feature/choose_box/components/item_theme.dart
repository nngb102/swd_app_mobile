import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/package_themes/themes_model.dart';
import '../../../resources/app_colors.dart';
import '../../../widget/app_logo.dart';

class ItemTheme extends StatelessWidget {
  const ItemTheme({
    required this.theme,
    super.key,
  });

  final ThemesModel theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 50, left: 15),
      margin: EdgeInsets.only(top: 10, right: 15, left: 15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: AppColors.primaryButton2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 200,
      child: Row(
        children: [
          _buildImage(),
          const SizedBox(
            width: 25,
          ),
          _buildInformation()
        ],
      ),
    );
  }

  ClipRRect _buildImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
      child: CachedNetworkImage(
        imageUrl:
            'https://luhanhvietnam.com.vn/du-lich/vnt_upload/news/02_2020/mua-reu-da-nam-o-8.jpg',
        fit: BoxFit.fill,
        imageBuilder: (context, imageProvider) => Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.center,
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) => Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.error_outline,
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  Expanded _buildInformation() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppLogo(),
          Text(
            theme.name ?? '',
            softWrap: true,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            theme.description ?? '',
            softWrap: true,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryButton2,
                  ),
                  alignment: Alignment.center,
                  child: Text('Choose Box'),
                ),
              ),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
