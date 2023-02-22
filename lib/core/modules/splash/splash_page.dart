import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: SizedBox(
                width: 145,
                height: 145,
                child:
                    Image(image: AssetImage("assets/images/spotify-logo.png"))),
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
