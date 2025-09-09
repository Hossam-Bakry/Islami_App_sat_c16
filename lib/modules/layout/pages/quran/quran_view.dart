import 'package:flutter/material.dart';
import 'package:islami_app_c16_sat/core/constants/app_assets.dart';
import 'package:islami_app_c16_sat/core/theme/color_pallete.dart';
import 'package:islami_app_c16_sat/models/sura_data_model.dart';
import 'package:islami_app_c16_sat/modules/layout/pages/quran/widgets/quran_card_widget.dart';
import 'package:islami_app_c16_sat/modules/layout/pages/quran/widgets/recently_card_widget.dart';

/// * versioned
/// * unVersioned
///
/// 1- commit
/// 2- push

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  List<SuraDataModel> allQuranSuras = [
    SuraDataModel(
      suraNameAR: "الفاتحه",
      suraNameEN: "Al-Fatiha",
      suraNumber: 1,
      suraAyahCount: 7,
    ),
    SuraDataModel(
      suraNameAR: "البقرة",
      suraNameEN: "Al-Baqarah",
      suraNumber: 2,
      suraAyahCount: 286,
    ),
    SuraDataModel(
      suraNameAR: "آل عمران",
      suraNameEN: "Aal-E-Imran",
      suraNumber: 3,
      suraAyahCount: 200,
    ),
    SuraDataModel(
      suraNameAR: "النساء",
      suraNameEN: "An-Nisa'",
      suraNumber: 4,
      suraAyahCount: 176,
    ),
    SuraDataModel(
      suraNameAR: "المائدة",
      suraNameEN: "Al-Ma'idah",
      suraNumber: 5,
      suraAyahCount: 120,
    ),
    SuraDataModel(
      suraNameAR: "الأنعام",
      suraNameEN: "Al-An'am",
      suraNumber: 6,
      suraAyahCount: 165,
    ),
    SuraDataModel(
      suraNameAR: "الأعراف",
      suraNameEN: "Al-A'raf",
      suraNumber: 7,
      suraAyahCount: 206,
    ),
    SuraDataModel(
      suraNameAR: "الأنفال",
      suraNameEN: "Al-Anfal",
      suraNumber: 8,
      suraAyahCount: 75,
    ),
    SuraDataModel(
      suraNameAR: "التوبة",
      suraNameEN: "At-Tawbah",
      suraNumber: 9,
      suraAyahCount: 129,
    ),
    SuraDataModel(
      suraNameAR: "يونس",
      suraNameEN: "Yunus",
      suraNumber: 10,
      suraAyahCount: 109,
    ),
    SuraDataModel(
      suraNameAR: "هود",
      suraNameEN: "Hud",
      suraNumber: 11,
      suraAyahCount: 123,
    ),
    SuraDataModel(
      suraNameAR: "يوسف",
      suraNameEN: "Yusuf",
      suraNumber: 12,
      suraAyahCount: 111,
    ),
    SuraDataModel(
      suraNameAR: "الرعد",
      suraNameEN: "Ar-Ra'd",
      suraNumber: 13,
      suraAyahCount: 43,
    ),
    SuraDataModel(
      suraNameAR: "إبراهيم",
      suraNameEN: "Ibrahim",
      suraNumber: 14,
      suraAyahCount: 52,
    ),
    SuraDataModel(
      suraNameAR: "الحجر",
      suraNameEN: "Al-Hijr",
      suraNumber: 15,
      suraAyahCount: 99,
    ),
    SuraDataModel(
      suraNameAR: "النحل",
      suraNameEN: "An-Nahl",
      suraNumber: 16,
      suraAyahCount: 128,
    ),
    SuraDataModel(
      suraNameAR: "الإسراء",
      suraNameEN: "Al-Isra",
      suraNumber: 17,
      suraAyahCount: 111,
    ),
    SuraDataModel(
      suraNameAR: "الكهف",
      suraNameEN: "Al-Kahf",
      suraNumber: 18,
      suraAyahCount: 110,
    ),
    SuraDataModel(
      suraNameAR: "مريم",
      suraNameEN: "Maryam",
      suraNumber: 19,
      suraAyahCount: 98,
    ),
    SuraDataModel(
      suraNameAR: "طه",
      suraNameEN: "Ta-Ha",
      suraNumber: 20,
      suraAyahCount: 135,
    ),
    SuraDataModel(
      suraNameAR: "الأنبياء",
      suraNameEN: "Al-Anbiya",
      suraNumber: 21,
      suraAyahCount: 112,
    ),
    SuraDataModel(
      suraNameAR: "الحج",
      suraNameEN: "Al-Hajj",
      suraNumber: 22,
      suraAyahCount: 78,
    ),
    SuraDataModel(
      suraNameAR: "المؤمنون",
      suraNameEN: "Al-Mu'minun",
      suraNumber: 23,
      suraAyahCount: 118,
    ),
    SuraDataModel(
      suraNameAR: "النّور",
      suraNameEN: "An-Nur",
      suraNumber: 24,
      suraAyahCount: 64,
    ),
    SuraDataModel(
      suraNameAR: "الفرقان",
      suraNameEN: "Al-Furqan",
      suraNumber: 25,
      suraAyahCount: 77,
    ),
    SuraDataModel(
      suraNameAR: "الشعراء",
      suraNameEN: "Ash-Shu'ara",
      suraNumber: 26,
      suraAyahCount: 227,
    ),
    SuraDataModel(
      suraNameAR: "النّمل",
      suraNameEN: "An-Naml",
      suraNumber: 27,
      suraAyahCount: 93,
    ),
    SuraDataModel(
      suraNameAR: "القصص",
      suraNameEN: "Al-Qasas",
      suraNumber: 28,
      suraAyahCount: 88,
    ),
    SuraDataModel(
      suraNameAR: "العنكبوت",
      suraNameEN: "Al-Ankabut",
      suraNumber: 29,
      suraAyahCount: 69,
    ),
    SuraDataModel(
      suraNameAR: "الرّوم",
      suraNameEN: "Ar-Rum",
      suraNumber: 30,
      suraAyahCount: 60,
    ),
    SuraDataModel(
      suraNameAR: "لقمان",
      suraNameEN: "Luqman",
      suraNumber: 31,
      suraAyahCount: 34,
    ),
    SuraDataModel(
      suraNameAR: "السجدة",
      suraNameEN: "As-Sajda",
      suraNumber: 32,
      suraAyahCount: 30,
    ),
    SuraDataModel(
      suraNameAR: "الأحزاب",
      suraNameEN: "Al-Ahzab",
      suraNumber: 33,
      suraAyahCount: 73,
    ),
    SuraDataModel(
      suraNameAR: "سبأ",
      suraNameEN: "Saba",
      suraNumber: 34,
      suraAyahCount: 54,
    ),
    SuraDataModel(
      suraNameAR: "فاطر",
      suraNameEN: "Fatir",
      suraNumber: 35,
      suraAyahCount: 45,
    ),
    SuraDataModel(
      suraNameAR: "يس",
      suraNameEN: "Ya-Sin",
      suraNumber: 36,
      suraAyahCount: 83,
    ),
    SuraDataModel(
      suraNameAR: "الصافات",
      suraNameEN: "As-Saffat",
      suraNumber: 37,
      suraAyahCount: 182,
    ),
    SuraDataModel(
      suraNameAR: "ص",
      suraNameEN: "Sad",
      suraNumber: 38,
      suraAyahCount: 88,
    ),
    SuraDataModel(
      suraNameAR: "الزمر",
      suraNameEN: "Az-Zumar",
      suraNumber: 39,
      suraAyahCount: 75,
    ),
    SuraDataModel(
      suraNameAR: "غافر",
      suraNameEN: "Ghafir",
      suraNumber: 40,
      suraAyahCount: 85,
    ),
    SuraDataModel(
      suraNameAR: "فصّلت",
      suraNameEN: "Fussilat",
      suraNumber: 41,
      suraAyahCount: 54,
    ),
    SuraDataModel(
      suraNameAR: "الشورى",
      suraNameEN: "Ash-Shura",
      suraNumber: 42,
      suraAyahCount: 53,
    ),
    SuraDataModel(
      suraNameAR: "الزخرف",
      suraNameEN: "Az-Zukhruf",
      suraNumber: 43,
      suraAyahCount: 89,
    ),
    SuraDataModel(
      suraNameAR: "الدّخان",
      suraNameEN: "Ad-Dukhan",
      suraNumber: 44,
      suraAyahCount: 59,
    ),
    SuraDataModel(
      suraNameAR: "الجاثية",
      suraNameEN: "Al-Jathiya",
      suraNumber: 45,
      suraAyahCount: 37,
    ),
    SuraDataModel(
      suraNameAR: "الأحقاف",
      suraNameEN: "Al-Ahqaf",
      suraNumber: 46,
      suraAyahCount: 35,
    ),
    SuraDataModel(
      suraNameAR: "محمد",
      suraNameEN: "Muhammad",
      suraNumber: 47,
      suraAyahCount: 38,
    ),
    SuraDataModel(
      suraNameAR: "الفتح",
      suraNameEN: "Al-Fath",
      suraNumber: 48,
      suraAyahCount: 29,
    ),
    SuraDataModel(
      suraNameAR: "الحجرات",
      suraNameEN: "Al-Hujurat",
      suraNumber: 49,
      suraAyahCount: 18,
    ),
    SuraDataModel(
      suraNameAR: "ق",
      suraNameEN: "Qaf",
      suraNumber: 50,
      suraAyahCount: 45,
    ),
    SuraDataModel(
      suraNameAR: "الذاريات",
      suraNameEN: "Adh-Dhariyat",
      suraNumber: 51,
      suraAyahCount: 60,
    ),
    SuraDataModel(
      suraNameAR: "الطور",
      suraNameEN: "At-Tur",
      suraNumber: 52,
      suraAyahCount: 49,
    ),
    SuraDataModel(
      suraNameAR: "النجم",
      suraNameEN: "An-Najm",
      suraNumber: 53,
      suraAyahCount: 62,
    ),
    SuraDataModel(
      suraNameAR: "القمر",
      suraNameEN: "Al-Qamar",
      suraNumber: 54,
      suraAyahCount: 55,
    ),
    SuraDataModel(
      suraNameAR: "الرحمن",
      suraNameEN: "Ar-Rahman",
      suraNumber: 55,
      suraAyahCount: 78,
    ),
    SuraDataModel(
      suraNameAR: "الواقعة",
      suraNameEN: "Al-Waqi'a",
      suraNumber: 56,
      suraAyahCount: 96,
    ),
    SuraDataModel(
      suraNameAR: "الحديد",
      suraNameEN: "Al-Hadid",
      suraNumber: 57,
      suraAyahCount: 29,
    ),
    SuraDataModel(
      suraNameAR: "المجادلة",
      suraNameEN: "Al-Mujadila",
      suraNumber: 58,
      suraAyahCount: 22,
    ),
    SuraDataModel(
      suraNameAR: "الحشر",
      suraNameEN: "Al-Hashr",
      suraNumber: 59,
      suraAyahCount: 24,
    ),
    SuraDataModel(
      suraNameAR: "الممتحنة",
      suraNameEN: "Al-Mumtahina",
      suraNumber: 60,
      suraAyahCount: 13,
    ),
    SuraDataModel(
      suraNameAR: "الصف",
      suraNameEN: "As-Saff",
      suraNumber: 61,
      suraAyahCount: 14,
    ),
    SuraDataModel(
      suraNameAR: "الجمعة",
      suraNameEN: "Al-Jumu'a",
      suraNumber: 62,
      suraAyahCount: 11,
    ),
    SuraDataModel(
      suraNameAR: "المنافقون",
      suraNameEN: "Al-Munafiqun",
      suraNumber: 63,
      suraAyahCount: 11,
    ),
    SuraDataModel(
      suraNameAR: "التغابن",
      suraNameEN: "At-Taghabun",
      suraNumber: 64,
      suraAyahCount: 18,
    ),
    SuraDataModel(
      suraNameAR: "الطلاق",
      suraNameEN: "At-Talaq",
      suraNumber: 65,
      suraAyahCount: 12,
    ),
    SuraDataModel(
      suraNameAR: "التحريم",
      suraNameEN: "At-Tahrim",
      suraNumber: 66,
      suraAyahCount: 12,
    ),
    SuraDataModel(
      suraNameAR: "الملك",
      suraNameEN: "Al-Mulk",
      suraNumber: 67,
      suraAyahCount: 30,
    ),
    SuraDataModel(
      suraNameAR: "القلم",
      suraNameEN: "Al-Qalam",
      suraNumber: 68,
      suraAyahCount: 52,
    ),
    SuraDataModel(
      suraNameAR: "الحاقة",
      suraNameEN: "Al-Haqqah",
      suraNumber: 69,
      suraAyahCount: 52,
    ),
    SuraDataModel(
      suraNameAR: "المعارج",
      suraNameEN: "Al-Ma'arij",
      suraNumber: 70,
      suraAyahCount: 44,
    ),
    SuraDataModel(
      suraNameAR: "نوح",
      suraNameEN: "Nuh",
      suraNumber: 71,
      suraAyahCount: 28,
    ),
    SuraDataModel(
      suraNameAR: "الجن",
      suraNameEN: "Al-Jinn",
      suraNumber: 72,
      suraAyahCount: 28,
    ),
    SuraDataModel(
      suraNameAR: "المزّمّل",
      suraNameEN: "Al-Muzzammil",
      suraNumber: 73,
      suraAyahCount: 20,
    ),
    SuraDataModel(
      suraNameAR: "المدّثر",
      suraNameEN: "Al-Muddathir",
      suraNumber: 74,
      suraAyahCount: 56,
    ),
    SuraDataModel(
      suraNameAR: "القيامة",
      suraNameEN: "Al-Qiyamah",
      suraNumber: 75,
      suraAyahCount: 40,
    ),
    SuraDataModel(
      suraNameAR: "الإنسان",
      suraNameEN: "Al-Insan",
      suraNumber: 76,
      suraAyahCount: 31,
    ),
    SuraDataModel(
      suraNameAR: "المرسلات",
      suraNameEN: "Al-Mursalat",
      suraNumber: 77,
      suraAyahCount: 50,
    ),
    SuraDataModel(
      suraNameAR: "النبأ",
      suraNameEN: "An-Naba'",
      suraNumber: 78,
      suraAyahCount: 40,
    ),
    SuraDataModel(
      suraNameAR: "النازعات",
      suraNameEN: "An-Nazi'at",
      suraNumber: 79,
      suraAyahCount: 46,
    ),
    SuraDataModel(
      suraNameAR: "عبس",
      suraNameEN: "Abasa",
      suraNumber: 80,
      suraAyahCount: 42,
    ),
    SuraDataModel(
      suraNameAR: "التكوير",
      suraNameEN: "At-Takwir",
      suraNumber: 81,
      suraAyahCount: 29,
    ),
    SuraDataModel(
      suraNameAR: "الإنفطار",
      suraNameEN: "Al-Infitar",
      suraNumber: 82,
      suraAyahCount: 19,
    ),
    SuraDataModel(
      suraNameAR: "المطفّفين",
      suraNameEN: "Al-Mutaffifin",
      suraNumber: 83,
      suraAyahCount: 36,
    ),
    SuraDataModel(
      suraNameAR: "الإنشقاق",
      suraNameEN: "Al-Inshiqaq",
      suraNumber: 84,
      suraAyahCount: 25,
    ),
    SuraDataModel(
      suraNameAR: "البروج",
      suraNameEN: "Al-Buruj",
      suraNumber: 85,
      suraAyahCount: 22,
    ),
    SuraDataModel(
      suraNameAR: "الطارق",
      suraNameEN: "At-Tariq",
      suraNumber: 86,
      suraAyahCount: 17,
    ),
    SuraDataModel(
      suraNameAR: "الأعلى",
      suraNameEN: "Al-A'la",
      suraNumber: 87,
      suraAyahCount: 19,
    ),
    SuraDataModel(
      suraNameAR: "الغاشية",
      suraNameEN: "Al-Ghashiyah",
      suraNumber: 88,
      suraAyahCount: 26,
    ),
    SuraDataModel(
      suraNameAR: "الفجر",
      suraNameEN: "Al-Fajr",
      suraNumber: 89,
      suraAyahCount: 30,
    ),
    SuraDataModel(
      suraNameAR: "البلد",
      suraNameEN: "Al-Balad",
      suraNumber: 90,
      suraAyahCount: 20,
    ),
    SuraDataModel(
      suraNameAR: "الشمس",
      suraNameEN: "Ash-Shams",
      suraNumber: 91,
      suraAyahCount: 15,
    ),
    SuraDataModel(
      suraNameAR: "الليل",
      suraNameEN: "Al-Lail",
      suraNumber: 92,
      suraAyahCount: 21,
    ),
    SuraDataModel(
      suraNameAR: "الضحى",
      suraNameEN: "Ad-Duha",
      suraNumber: 93,
      suraAyahCount: 11,
    ),
    SuraDataModel(
      suraNameAR: "الشرح",
      suraNameEN: "Ash-Sharh",
      suraNumber: 94,
      suraAyahCount: 8,
    ),
    SuraDataModel(
      suraNameAR: "التين",
      suraNameEN: "At-Tin",
      suraNumber: 95,
      suraAyahCount: 8,
    ),
    SuraDataModel(
      suraNameAR: "العلق",
      suraNameEN: "Al-Alaq",
      suraNumber: 96,
      suraAyahCount: 19,
    ),
    SuraDataModel(
      suraNameAR: "القدر",
      suraNameEN: "Al-Qadr",
      suraNumber: 97,
      suraAyahCount: 5,
    ),
  ];
  List<SuraDataModel> recentlyReadSuraList = [
    SuraDataModel(
      suraNameAR: "الأنبياء",
      suraNameEN: "Al-Anbiya",
      suraNumber: 8,
      suraAyahCount: 112,
    ),
    SuraDataModel(
      suraNameAR: "الفاتحه",
      suraNameEN: "Al-Fatiha",
      suraNumber: 1,
      suraAyahCount: 7,
    ),
    SuraDataModel(
      suraNameAR: "البقرة",
      suraNameEN: "Al-Baqarah",
      suraNumber: 2,
      suraAyahCount: 286,
    ),
    SuraDataModel(
      suraNameAR: "آل عمران",
      suraNameEN: "Aal-E-Imran",
      suraNumber: 3,
      suraAyahCount: 200,
    ),
  ];

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
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppAssets.islamiLogo),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Text("Most Recently", style: theme.textTheme.bodyLarge),
            ),
            SizedBox(
              height: 160,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                itemBuilder: (context, index) {
                  return RecentlyCardWidget(
                    suraDataModel: recentlyReadSuraList[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10.0);
                },
                itemCount: recentlyReadSuraList.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Text("Suras List", style: theme.textTheme.bodyLarge),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return QuranCardWidget(suraDataModel: allQuranSuras[index]);
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.white,
                  thickness: 2,
                  indent: 60.0,
                  endIndent: 60.0,
                );
              },
              itemCount: allQuranSuras.length,
            ),
          ],
        ),
      ),
    );
  }
}
