import 'dart:ui' as BorderType;

import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/constants.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:linkedin_clone/views/profile/dashed_border_box.dart';
import 'package:linkedin_clone/widgets/my_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController tfAppbar = TextEditingController(
    text: "Safiye Sena Merdin",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainWhiteTone,
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 10),
        title: Expanded(
          // Search TextField
          child: Container(
            height: Constants.appbarSearchHeight,
            child: TextField(
              controller: tfAppbar,
              decoration: InputDecoration(
                prefixIcon: SizedBox(
                  height: Constants.appbarSearchIconSize,
                  width: Constants.appbarSearchIconSize,
                  child: Icon(Icons.search),
                ),
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Color(0xffEEF3F7),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide.none,
                ),
                hintText: "Arama Yap",
              ),
            ),
          ),
        ),
        actions: [
          SizedBox(
            height: Constants.appbarIconSize,
            width: Constants.appbarIconSize,
            child: Icon(Icons.settings, color: Constants.mainDarkGreyColor),
          ),
        ],
      ),
      // body
      body: ListView(
        children: [
          // profile image section
          _buildTitleSection(),
          const SizedBox(height: 20,),
          _buildAnalysis(),
          
        ],
      ),
    );
  }

  // header section, general info
  Stack _buildTitleSection() {
    return Stack(
      children: [
        SizedBox(
          height: 480,
          child: Column(
            children: [
              // top placeholder image
              Expanded(
                flex: 2,
                // stack: profile image, pencil icon and photo symbol
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/profile_top_placeholder.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Container(
                  width: double.infinity,
                  // infos column
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 80, 20, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          textContent: "Safiye Sena Merdin",
                          textSize: 24,
                          textWeight: FontWeight.w600,
                          textColor: Constants.mainBlackColor,
                        ),
                        const SizedBox(height: 10),
                        // dotted border elevated button
                        DashedBorderBox(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.verified_user_outlined,
                                color: Constants.mainColor,
                                size: 16,
                              ),
                              SizedBox(width: 4),
                              MyText(
                                textContent: "Doğrulama rozeti ekleyin",
                                textSize: 12,
                                textWeight: FontWeight.w700,
                                textColor: Constants.mainColor,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        // person title
                        Row(
                          children: [
                            SizedBox(
                              width: 300,
                              child: MyText(
                                textContent:
                                    "CE | Mobile Developer | UI/UX Principles | Firebase | Flutter",
                                textSize: 16,
                                textWeight: FontWeight.w500,
                                textColor: Constants.mainBlackColor,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        MyText(
                          textContent: "İstanbul, Türkiye",
                          textSize: 14,
                          textWeight: FontWeight.normal,
                          textColor: Constants.mainLightGrey,
                        ),
                        const SizedBox(height: 10),
                        // follower and connection count
                        MyText(
                          textContent: "233 takipçi · 223 bağlantı",
                          textSize: 14,
                          textWeight: FontWeight.bold,
                          textColor: Constants.mainColor,
                        ),
                        const SizedBox(height: 10),
                        // buttons row
                        Row(
                          children: [
                            // "Açık" button
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Açık",
                                  style: TextStyle(
                                    color: Constants.mainWhiteTone,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),

                            // "Bölüm Ekle" button
                            Expanded(
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Constants.mainColor),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Bölüm Ekle",
                                  style: TextStyle(
                                    color: Constants.mainColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),

                            // circle more button
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  padding: EdgeInsets.zero,
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  side: BorderSide(
                                    color: Constants.mainDarkGreyColor,
                                  ),
                                ),
                                child: Icon(
                                  Icons.more_horiz,
                                  size: 20,
                                  color: Constants.mainDarkGreyColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        // "profili geliştir" button
                        Row(
                          children: [
                            Expanded(
                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Constants.mainColor),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Profili geliştir",
                                  style: TextStyle(
                                    color: Constants.mainColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // profile image
        Positioned(
          top: 50,
          left: 30,
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Constants.mainWhiteTone, width: 4),
            ),
            child: CircleAvatar(
              child: Image.asset("assets/images/pp_man2.png"),
            ),
          ),
        ),

        // photo symbol
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Constants.mainWhiteTone,
              image: DecorationImage(
                image: AssetImage("assets/icons/camera_blue_icon.png"),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),

        // pencil icon
        Positioned(
          top: 120,
          right: 10,
          child: Icon(Icons.edit, color: Constants.mainLightGrey),
        ),
      ],
    );
  }
  
  _buildAnalysis() {
    return 
  }



}
