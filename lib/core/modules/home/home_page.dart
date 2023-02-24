import 'package:clone_spotify/core/modules/home/components/home_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Stack(
            children: [
              SingleChildScrollView(
                  child: Center(
                child: Column(
                  children: [],
                ),
              )),
              Align(
                alignment: Alignment.bottomCenter,
                child: HomeBottomNavigation(),
              )
            ],
          )),
    );
  }
}
