import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import '../widget/navigation_widget.dart';

class HomePage extends StatelessWidget {
  final StatefulNavigationShell child;

  const HomePage({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xFF191919),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Color(0xFF191919),
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              SizedBox(height: screenHeight, child: child),
              const Positioned(
                bottom: 0,
                right: 13,
                left: 13,
                child: NavigationWidget(),
              ),
            ],
          ),
        ],
      ),
      extendBody: true,
      resizeToAvoidBottomInset: false,
    );
  }
}
