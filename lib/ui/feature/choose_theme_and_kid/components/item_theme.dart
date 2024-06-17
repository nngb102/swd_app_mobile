import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/package_themes/themes_model.dart';
import '../../../resources/app_colors.dart';
import '../../../widget/app_logo.dart';

class ItemTheme extends StatelessWidget {
  const ItemTheme({
    required this.theme,
    required this.isSelected,
    super.key,
    this.onTap,
  });

  final ThemesModel theme;
  final Function()? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color:
              isSelected ? AppColors.primaryButton1 : AppColors.primaryButton2,
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
        imageUrl: theme.image ?? '',
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
          SizedBox(height: 25, child: AppLogo()),
          Text(
            theme.name ?? '',
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            theme.description ?? '',
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 11,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              InkWell(
                onTap:onTap,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.primaryButton2,
                  ),
                  alignment: Alignment.center,
                  child: const Text('Choose Box'),
                ),
              ),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
