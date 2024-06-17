import 'package:flutter/material.dart';

import '../../../../data/model/my_stery_box/mystery_box_model.dart';

import 'item_box.dart';

class BoxList extends StatelessWidget {
  const BoxList({
    required this.boxs,
    super.key,
    this.boxSelected,
    this.onTap,
  });

  final List<MysteryBoxModel> boxs;
  final MysteryBoxModel? boxSelected;
  final Function(MysteryBoxModel)? onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: boxs.length,
      itemBuilder: (context, index) => ItemBox(
        onTap: () => onTap?.call(boxs[index]),
        box: boxs[index],
        isSelected: boxSelected?.id == boxs[index].id,
      ),
    );
  }
}
