import 'package:flutter/material.dart';

import '../../../../data/model/profile/kid_profile_by_user_id_model.dart';

class ItemKid extends StatefulWidget {
  const ItemKid({
    required this.kid,
    required this.isSelected,
    this.onTap,
  });

  final ValueChanged<KidProfileByUserIdModel>? onTap;

  final KidProfileByUserIdModel kid;

  final bool isSelected;

  @override
  State<ItemKid> createState() => _ItemKidState();
}

class _ItemKidState extends State<ItemKid> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        widget.onTap?.call(widget.kid);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 20,
              height: 20,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1,
                  color: widget.isSelected ? Colors.blue : Colors.black,
                ),
              ),
              child: Visibility(
                visible: widget.isSelected,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
              child: Text(
                widget.kid.fullName ?? '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
