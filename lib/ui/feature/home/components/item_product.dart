import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../data/model/home/package_model.dart';
import '../../../resources/app_colors.dart';
import '../../../resources/app_text_styles.dart';
import '../../../widget/app_logo.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    required this.package,
    required this.onTap,
    super.key,
  });
  final Package package;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: AppColors.primaryButton2,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            _buildImage(),
            const SizedBox(
              width: 25,
            ),
            _buildInformation()
          ],
        ),
      ),
    );
  }

  ClipRRect _buildImage() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
      // child: CachedNetworkImage(
      //   imageUrl: package.image ?? '',
      //   fit: BoxFit.fill,
      //   imageBuilder: (context, imageProvider) => Container(
      //     width: 150,
      //     decoration: BoxDecoration(
      //       image: DecorationImage(
      //         image: imageProvider,
      //         fit: BoxFit.cover,
      //       ),
      //     ),
      //   ),
      //   placeholder: (context, url) => Container(
      //     height: 200,
      //     width: 150,
      //     decoration: BoxDecoration(
      //       border: Border.all(
      //         width: 0.2,
      //         color: Colors.white,
      //       ),
      //       borderRadius: BorderRadius.circular(15),
      //     ),
      //     alignment: Alignment.center,
      //     child: const CircularProgressIndicator(),
      //   ),
      //   errorWidget: (context, url, error) => Container(
      //     height: 200,
      //     width: 150,
      //     decoration: BoxDecoration(
      //       border: Border.all(
      //         width: 0.2,
      //         color: Colors.white,
      //       ),
      //       borderRadius: BorderRadius.circular(15),
      //     ),
      //     alignment: Alignment.center,
      //     child: const Icon(
      //       Icons.error_outline,
      //       color: Colors.red,
      //     ),
      //   ),
      // ),
      child: SizedBox(
          width: 150,
          child: Image.asset(
            'assets/images/package.jpeg',
            fit: BoxFit.fitHeight,
          )),
    );
  }

  Expanded _buildInformation() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25, child: AppLogo()),
          const SizedBox(
            height: 10,
          ),
          Text(
            package.name ?? '',
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
            package.description ?? '',
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
          Text(
            '${package.price ?? ''}  VND',
            maxLines: 2,
            style: AppTextStyles.s14w600.copyWith(
              color: const Color(0xFFFFA451),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Flexible(
                child: InkWell(
                  onTap: onTap,
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
                    child: const Text(
                      'Choose Package ',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
