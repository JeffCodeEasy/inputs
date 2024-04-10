import 'package:flutter/material.dart';
import 'package:input/pages/keyboard_types_page.dart';
import 'package:input/pages/text_field_page.dart';
import 'package:input/routes.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.textField: (_) => const TextFieldPage(),
    Routes.keyboardTypes: (_) => const KeyboardTypesPages(),
  };
}
