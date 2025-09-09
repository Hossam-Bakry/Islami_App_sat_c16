import 'package:flutter/material.dart';
import 'package:islami_app_c16_sat/core/constants/app_assets.dart';
import 'package:islami_app_c16_sat/core/theme/color_pallete.dart';
import 'package:islami_app_c16_sat/models/sura_data_model.dart';

class RecentlyCardWidget extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const RecentlyCardWidget({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: 280.0,
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: ColorPallete.primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          Column(
            spacing: 15,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                suraDataModel.suraNameEN,
                style: theme.textTheme.headlineSmall,
              ),
              Text(
                suraDataModel.suraNameAR,
                style: theme.textTheme.headlineSmall,
              ),
              Text(
                "${suraDataModel.suraAyahCount} Verses  ",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          Expanded(child: Image.asset(AppAssets.quranCardImg)),
        ],
      ),
    );
  }
}
