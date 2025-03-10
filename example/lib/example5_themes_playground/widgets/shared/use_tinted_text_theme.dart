import 'package:flutter/material.dart';

import '../../../shared/controllers/theme_controller.dart';

class UseTinted3TextTheme extends StatelessWidget {
  const UseTinted3TextTheme({super.key, required this.controller});
  final ThemeController controller;
  @override
  Widget build(BuildContext context) {
    final bool isLight = Theme.of(context).brightness == Brightness.light;
    return isLight
        ? SwitchListTile(
            title: const Text('Light mode TextTheme is tinted'),
            subtitle: const Text('A hint of tint and primary color is mixed '
                'into main and primary text theme'),
            value: controller.blendLightTextTheme &&
                controller.useSubThemes &&
                controller.useFlexColorScheme,
            onChanged: controller.useSubThemes && controller.useFlexColorScheme
                ? controller.setBlendLightTextTheme
                : null,
          )
        : SwitchListTile(
            title: const Text('Dark mode TextTheme is tinted'),
            subtitle: const Text('A hint of tint and primary color is mixed '
                'into main and primary text theme'),
            value: controller.blendDarkTextTheme &&
                controller.useSubThemes &&
                controller.useFlexColorScheme,
            onChanged: controller.useSubThemes && controller.useFlexColorScheme
                ? controller.setBlendDarkTextTheme
                : null,
          );
  }
}
