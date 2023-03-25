import 'package:app/pages/desktop_layout.dart';
import 'package:app/pages/mobile_layout.dart';
import 'package:app/responsive/responsive_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: MobileLayout(),
      desktop: DesktopLayout(),
    );
  }
}
