import 'package:flutter/material.dart';

import '../../../../data/model/package_themes/themes_model.dart';
import 'item_theme.dart';

class ThemeList extends StatelessWidget {
  const ThemeList({
    required this.themes,
    super.key,
    this.onTap,
    this.themesSelected,
  });

  final Function(ThemesModel)? onTap;

  final List<ThemesModel> themes;

  final ThemesModel? themesSelected;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => ItemTheme(
        isSelected: themesSelected?.id == themes[index].id,
        theme: themes[index],
        onTap: () => onTap?.call(themes[index]),
      ),
      itemCount: themes.length,
    );
  }
}
