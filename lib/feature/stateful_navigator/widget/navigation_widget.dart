import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/domain/router/route_names.dart';
import '../../../theme/icon_collection_svg.dart';
import '../../../theme/light_theme_colors.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _index = 0;

  void _onTap() {
    switch (_index) {
      case 0:
        context.goNamed(RouteNames.myBooks);
        break;
      case 1:
        context.goNamed(RouteNames.books);
        break;
      case 2:
        context.goNamed(RouteNames.search);
        break;
      case 3:
        context.goNamed(RouteNames.settings);
        break;
    }
  }

  Widget bottomItem(
      {required String icon, required int index, required double screenWidth}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _index = index;
        });
        _onTap();
      },
      child: Container(
        width: screenWidth * 0.9 / 3.85,
        padding: const EdgeInsets.symmetric(vertical: 7),
        decoration: index == _index
            ? BoxDecoration(
                color: const Color(0x801C1C1C),
                borderRadius: BorderRadius.circular(26),
              )
            : const BoxDecoration(
                color: Colors.transparent,
              ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: SvgPicture.asset(
                height: index == _index ? 26 : 24,
                width: index == _index ? 26 : 24,
                icon,
                colorFilter: const ColorFilter.mode(
                  LightThemeColors.darkTabBarActiveText,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  double get _bottomPadding {
    final bottomMenuPadding = MediaQuery.of(context).padding.bottom;
    return Platform.isAndroid ? bottomMenuPadding + 12 : bottomMenuPadding;
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
      ),
      margin: EdgeInsets.only(bottom: _bottomPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        color: const Color(0x805E5C5C),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          bottomItem(
              icon: IconCollectionSVG.starOutline,
              index: 0,
              screenWidth: screenWidth),
          bottomItem(
            icon: IconCollectionSVG.book,
            index: 1,
            screenWidth: screenWidth,
          ),
          bottomItem(
              icon: IconCollectionSVG.search,
              index: 2,
              screenWidth: screenWidth),
          bottomItem(
              icon: IconCollectionSVG.settings,
              index: 3,
              screenWidth: screenWidth),
        ],
      ),
    );
  }
}
