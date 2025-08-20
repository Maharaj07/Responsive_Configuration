import 'package:flutter/material.dart';

class AnimatedImageAppBarComponent extends StatelessWidget {
  String? appBarTitle;
  double appBarHeight;
  bool isAppBarPinned;
  bool isAppBarFloating;
  bool? isCenterTitle;
  String appBarImageWidget;
  Color? appBarColor;

  AnimatedImageAppBarComponent({
    super.key,
    this.appBarTitle,
    required this.appBarHeight,
    required this.isAppBarPinned,
    required this.isAppBarFloating,
    this.isCenterTitle,
    required this.appBarImageWidget,
    this.appBarColor,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: appBarTitle != null ? 56 : 0,
      backgroundColor: appBarTitle != null ? appBarColor : null,
      centerTitle: isCenterTitle,
      title: appBarTitle != null ? Text(appBarTitle!) : null,
      expandedHeight: appBarHeight,
      pinned: isAppBarPinned,
      floating: isAppBarFloating,
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double opacity =
              1.0 - (constraints.biggest.height - kToolbarHeight) / 200;
          if (opacity < 0) opacity = 0;
          if (opacity > 1) opacity = 0.5;
          return FlexibleSpaceBar(
            background: Opacity(
              opacity: 1 - opacity,
              child: Image.asset(appBarImageWidget, fit: BoxFit.fill),
            ),
          );
        },
      ),
    );
  }
}

