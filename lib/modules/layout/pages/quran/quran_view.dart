import 'package:flutter/material.dart';
import 'package:islami_app_c16_sat/core/constants/app_assets.dart';
import 'package:islami_app_c16_sat/core/theme/color_pallete.dart';

/// * versioned
/// * unVersioned
///
/// 1- commit
/// 2- push

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.quranBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Image.asset(AppAssets.islamiLogo),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: TextFormField(
              cursorColor: ColorPallete.primaryColor,
              decoration: InputDecoration(
                hintText: "Sura Name",
                hintStyle: theme.textTheme.bodyLarge,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ImageIcon(
                    AssetImage(AppAssets.quranIcn),
                    color: ColorPallete.primaryColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: ColorPallete.primaryColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: ColorPallete.primaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
