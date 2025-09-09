import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_c16_sat/core/constants/app_assets.dart';
import 'package:islami_app_c16_sat/core/theme/color_pallete.dart';
import 'package:islami_app_c16_sat/models/sura_data_model.dart';

class QuranDetailsView extends StatefulWidget {
  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)!.settings.arguments as SuraDataModel;

    /// async
    if (verses.isEmpty) loadDataFromAssets(data.suraNumber.toString());

    return Scaffold(
      appBar: AppBar(title: Text(data.suraNameEN)),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppAssets.leftCornerImg, height: 85, width: 85),
                    Image.asset(
                      AppAssets.rightCornerImg,
                      height: 85,
                      width: 85,
                    ),
                  ],
                ),
              ),
              Image.asset(AppAssets.bottomImg),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),
              Text(
                data.suraNameAR,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: ColorPallete.primaryColor,
                ),
              ),
              SizedBox(height: 30.0),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  itemBuilder: (context, index) {
                    return Text(
                      "${verses[index]}{${index + 1}}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: ColorPallete.primaryColor,
                        height: 1.5,
                      ),
                    );
                  },
                  itemCount: verses.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<String> verses = [];

  Future<void> loadDataFromAssets(String suraNumber) async {
    String content = await rootBundle.loadString(
      "assets/files/$suraNumber.txt",
    );
    verses = content.split("\n");
    setState(() {});
    log(content);
    log(verses.length.toString());
  }
}
