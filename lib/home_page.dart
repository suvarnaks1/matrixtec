import 'package:flutter/material.dart';

import 'desktop_layout/screens/desktop_layout_screen.dart';
import 'mobile_layout/mobile_layout_screen.dart';
import 'tablet_layout/tablet_layout_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 950) {
        return DesktopLayoutScreen();
      } else if (Constraints.maxWidth > 600) {
        return TabletLayoutScreen();
      } else {
        return MobileLayoutScreen();
      }
    });
  }
}
