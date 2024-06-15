import 'package:flutter/material.dart';

import '../../../../data/model/home/package_model.dart';

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
      child: ListTile(
        leading: package.image != null
            ? Image.network(package.image!)
            : Icon(Icons.image_not_supported),
        title: Text(package.name ?? ''),
        subtitle: Text(package.description ?? ''),
        trailing: Text('Giá: ${package.price ?? ''}'),
      ),
    );
  }
}
