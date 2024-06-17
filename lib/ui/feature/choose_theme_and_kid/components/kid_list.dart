import 'package:flutter/material.dart';

import '../../../../data/model/profile/kid_profile_by_user_id_model.dart';

import 'item_kid.dart';

class KidList extends StatelessWidget {
  const KidList({
    required this.kids,
    super.key,
    this.kidSelected,
    this.onTap,
  });

  final List<KidProfileByUserIdModel> kids;
  final KidProfileByUserIdModel? kidSelected;
  final Function(KidProfileByUserIdModel)? onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: kids.length,
      itemBuilder: (context, index) => ItemKid(
        onTap: onTap,
        kid: kids[index],
        isSelected: kidSelected?.id == kids[index].id,
      ),
    );
  }
}
