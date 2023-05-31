import 'package:flutter/material.dart';

import 'package:flutter_application_1/responsive_layout/mobile_scaffold.dart';
import 'package:flutter_application_1/responsive_layout/responsive_layout.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // setPathUrlStrategy();
  runApp(
    ResponsiveLayout(
      mobileScaffold: MobileScaffold(),
    ),
  );
}
