import 'dart:ui';

import 'package:flutter/material.dart';

class AppSrollBehavior extends MaterialScrollBehavior{
  Set<PointerDeviceKind> get dragDevice=>{
    PointerDeviceKind.touch,
     PointerDeviceKind.mouse,
      PointerDeviceKind.trackpad,
  };
}