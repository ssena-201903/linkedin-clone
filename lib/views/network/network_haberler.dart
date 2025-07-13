import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/constants.dart';
import 'package:linkedin_clone/views/my_divider.dart';
import 'package:linkedin_clone/views/my_outlined_button.dart';
import 'package:linkedin_clone/views/my_text.dart';
import 'package:linkedin_clone/views/network/games_section.dart';

class NetworkHaberler extends StatefulWidget {
  const NetworkHaberler({super.key});

  @override
  State<NetworkHaberler> createState() => _NetworkHaberlerState();
}

class _NetworkHaberlerState extends State<NetworkHaberler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgPageColor,
      body: ListView(
        children: [
          // top buttons gelecek
          _buildTopButtonsRow(),
          SizedBox(height: 8),
          // listview olacak
          _buildCongratsList(),
          //tebrik kartları gelecek
          // games section gelecek
          GamesSection(),
          MyDivider(),
          // tebrik kartları devam
          _buildCongratsList(),
          _buildCongratsList(),
        ],
      ),
    );
  }

  Widget _buildCongratsList() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Constants.horizontalDividerColor),
        ),
        color: Constants.mainWhiteTone,
      ),
      child: ListView(
        shrinkWrap: true, // large of content
        children: [
          _buildCongratsCard(true, "assets/images/person_woman1.jpg", "Selda Bilici"), 
          MyDivider(),
          _buildCongratsCard(false, "assets/images/person_man4.jpg", "Ömer Korkusuz"), 
          MyDivider(),
        ]
      ),
    );
  }

  Container _buildTopButtonsRow() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [Constants.buttonRowShadow],
      ),
      height: Constants.butonsRowHeight,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Constants.mainGreenColor,
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
              onPressed: () {},
              child: MyText(
                textContent: "Tümü",
                textSize: Constants.buttonTextSize,
                textWeight: Constants.buttonTextWeight,
                textColor: Constants.buttonTextColor,
              ),
            ),
            SizedBox(width: 10),
            MyOutlinedButton(textButton: "İş değişiklikleri"),
            SizedBox(width: 10),
            MyOutlinedButton(textButton: "Doğum günleri"),
            SizedBox(width: 10),
            MyOutlinedButton(textButton: "İş yıldönümleri"),
            SizedBox(width: 10),
            MyOutlinedButton(textButton: "Eğitim"),
          ],
        ),
      ),
    );
  }

  Widget _buildCongratsCard(
    final bool isWorkCongrats,
    final String profileImage,
    final String name,
    ) {
    return Container(
      padding: Constants.paddingBigCard,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // profile picture circle avatar
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(profileImage),
          ),
          SizedBox(width: 10),

          // info column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // name and more_vert row
                Row(
                  children: [
                    MyText(
                      textContent: name,
                      textSize: Constants.fontSizeMidTitle,
                      textWeight: FontWeight.w600,
                      textColor: Constants.mainBlackColor,
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_vert,
                      color: Constants.mainLightGrey,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(height: 4),

                // RichText veya Text
                isWorkCongrats
                    ? RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Linkedin Türkiye",
                            style: TextStyle(
                              fontSize: Constants.fontSizeMidTitle,
                              fontWeight: FontWeight.w600,
                              color: Constants.mainBlackColor,
                            ),
                          ),
                          TextSpan(
                            text: " şirketinde 1 yılı tamamladı",
                            style: TextStyle(
                              fontSize: Constants.fontSizeMidTitle,
                              fontWeight: FontWeight.w400,
                              color: Constants.mainBlackColor,
                            ),
                          ),
                        ],
                      ),
                    )
                    : MyText(
                      textContent:
                          "9 Tem tarihinde $name adlı kullanıcının doğum gününü kutlayın",
                      textSize: Constants.fontSizeMidTitle,
                      textWeight: FontWeight.w400,
                      textColor: Constants.mainBlackColor,
                    ),

                SizedBox(height: 10),

                // bottom row
                Row(
                  children: [
                    // Buton
                    Flexible(
                      flex: 1,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: SizedBox(
                          height: 16,
                          width: 16,
                          child: Image.asset(
                            "assets/icons/send_light_color.png",
                          ),
                        ),
                        label: MyText(
                          textContent:
                              isWorkCongrats
                                  ? "Tebrikler $name"
                                  : "Geçmiş doğum günün kutlu olsun $name",
                          textSize: Constants.buttonTextSize,
                          textWeight: Constants.buttonTextWeight,
                          textColor: Constants.mainLightGrey,
                          textOverflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),

                    // Eğer iş tebrik kartıysa like ve comment göster
                    if (isWorkCongrats) ...[
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          children: [
                            // like row
                            Row(
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset("assets/icons/like.png"),
                                ),
                                SizedBox(width: 4),
                                MyText(
                                  textContent: "45",
                                  textSize: Constants.fontSizeMidTitle,
                                  textWeight: FontWeight.w400,
                                  textColor: Constants.mainDarkGreyColor,
                                ),
                              ],
                            ),
                            SizedBox(width: 20),
                            // comment row
                            Row(
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                    "assets/icons/comment.png",
                                  ),
                                ),
                                SizedBox(width: 4),
                                MyText(
                                  textContent: "45",
                                  textSize: Constants.fontSizeMidTitle,
                                  textWeight: FontWeight.w400,
                                  textColor: Constants.mainDarkGreyColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
