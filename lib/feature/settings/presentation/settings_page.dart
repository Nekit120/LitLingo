import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'settings_view.dart';
import 'settings_vm.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => SettingsViewModel(),
      child: const SettingsView(),
    );
  }
}
