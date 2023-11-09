import 'package:flutter/material.dart';
import 'package:recipe_app/core/constants/asset_constants.dart';
import 'package:recipe_app/core/constants/color_constants.dart';
import 'package:recipe_app/core/constants/string_constants.dart';
import 'package:recipe_app/presentation/screens/setup_screen/setup_screen.dart';
import 'package:recipe_app/presentation/widget/rounded_button_widget.dart';

class SplashOnboardingPage extends StatelessWidget {
  const SplashOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            AssetConstants.konboardingBackgroundImage,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  StringConstants.konboardingMaintext,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    StringConstants.konboardingSubtext,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: RoundedButton(
                    title: StringConstants.kgettingStartedButton,
                    colour: ColorConstants.primaryColor,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SetupPage(),
                          ));
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
