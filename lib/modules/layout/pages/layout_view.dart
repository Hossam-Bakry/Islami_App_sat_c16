import 'package:flutter/material.dart';
import 'package:islami_app_c16_sat/core/constants/app_assets.dart';
import 'package:islami_app_c16_sat/modules/layout/pages/hadith/hadith_view.dart';
import 'package:islami_app_c16_sat/modules/layout/pages/quran/quran_view.dart';
import 'package:islami_app_c16_sat/modules/layout/pages/radio/radio_view.dart';
import 'package:islami_app_c16_sat/modules/layout/pages/tasbeh/tasbeh_view.dart';
import 'package:islami_app_c16_sat/modules/layout/pages/time/time_view.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 0;

  List<Widget> screens = [
    QuranView(),
    HadithView(),
    TasbehView(),
    RadioView(),
    TimeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.quranIcn)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.quranIcn)),
            ),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.hadithIcn)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.hadithIcn)),
            ),
            label: "Hadith",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.tasbehIcn)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.tasbehIcn)),
            ),
            label: "Tasbeh",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.radioIcn)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.radioIcn)),
            ),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.timeIcn)),
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: ImageIcon(AssetImage(AppAssets.timeIcn)),
            ),
            label: "Time",
          ),
        ],
      ),
    );
  }
}
