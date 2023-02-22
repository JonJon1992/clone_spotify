import 'package:clone_spotify/core/utils/app_bindings.dart';
import 'package:clone_spotify/core/utils/pages_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CloneSpotifyApp extends StatelessWidget {
  const CloneSpotifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        enableLog: true,
        initialRoute: '/splash',
        initialBinding: AppBindings(),
        getPages: PageModules().routes);
  }
}
