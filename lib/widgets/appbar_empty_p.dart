import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft/utils/app_theme.dart';
import 'package:nft/widgets/material_p.dart';

class AppBarEmptyP extends StatelessWidget {
  const AppBarEmptyP({@required this.child, Key key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final AppTheme theme = context.theme();
    return MaterialP(
      child: Scaffold(
        backgroundColor: theme.backgroundColor ?? Colors.transparent,
        appBar: PreferredSize(
          preferredSize: const Size(0, 0),
          child: AppBar(
            elevation: 0,
            brightness: theme.isDark ? Brightness.dark : Brightness.light,
            backgroundColor: theme.headerBgColor,
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: child,
        ),
      ),
    );
  }
}