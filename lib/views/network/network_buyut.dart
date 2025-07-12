import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/constants.dart';
import 'package:linkedin_clone/views/my_text.dart';

class NetworkBuyut extends StatefulWidget {
  const NetworkBuyut({super.key});

  @override
  State<NetworkBuyut> createState() => _NetworkBuyutState();
}

class _NetworkBuyutState extends State<NetworkBuyut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgPageColor,
      body: ListView(
        children: [
          // network requests gelecek
          Container(
            child: Column(
              children: [
                // davetler title gelecek
                _buildSectionTitle("Davetler (2)"),
                // davetler listesi gelecek
                // davet kartı
                _buildInvitationCard(
                  "Linkedin",
                  3,
                  "assets/icons/linkedin_logo.png",
                  "In the loop",
                ),
                _buildInvitationCard(
                  "Hyundai",
                  6,
                  "assets/icons/hyundai_logo.png",
                  "hello",
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          // games horizontal listview gelecek
          Container(
            padding: Constants.paddingCard,
            decoration: BoxDecoration(color: Constants.mainWhiteTone),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // games title
                _buildTitleText("Günlük oyunlar aracılığıyla iletişimde kalın"),
                SizedBox(height: 10),
                // games horizontal listview
                SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      // games single container
                      _buildSingleGameContainer(
                        "assets/icons/queens_logo.png",
                        "Queens",
                        "438",
                        "2 Tem, Çarşamba",
                        "Çöz",
                      ),
                      SizedBox(width: 10),
                      _buildSingleGameContainer(
                        "assets/icons/tango_logo.png",
                        "Tango",
                        "278",
                        "2 Tem, Çarşamba",
                        "Çöz",
                      ),
                      SizedBox(width: 10),
                      _buildSingleGameContainer(
                        "assets/icons/zip_logo.png",
                        "Zip",
                        "117",
                        "2 Tem, Çarşamba",
                        "Sonuçlar",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          // ağımı yönet gelecek
          _buildSectionTitle("Ağımı yönet"),
          SizedBox(height: 8),
          // öneriler girdview gelecek
          _buildGridContainer(),
        ],
      ),
    );
  }

  MyText _buildTitleText(String textTitle) {
    return MyText(
      textContent: textTitle,
      textSize: Constants.fontSizeMidTitle,
      textWeight: FontWeight.w400,
      textColor: Constants.mainBlackColor,
    );
  }

  Container _buildSectionTitle(String textTitle) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: Constants.mainWhiteTone,
        border: Border(
          bottom: BorderSide(color: Constants.horizontalDividerColor),
        ),
      ),
      child: Row(
        children: [
          // davetler text
          MyText(
            textContent: "$textTitle",
            textSize: Constants.fontSizeMidTitle,
            textWeight: FontWeight.bold,
            textColor: Constants.mainBlackColor,
          ),
          Spacer(),
          Icon(Icons.arrow_forward_sharp, color: Constants.mainDarkGreyColor),
        ],
      ),
    );
  }

  Widget _buildSingleGameContainer(
    String imagePath,
    String name,
    String dayCount,
    String date,
    String buttonText,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        padding: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(color: Constants.verticalDividerColor),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40, width: 40, child: Image.asset(imagePath)),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // rich text
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$name",
                        style: TextStyle(
                          color: Constants.mainBlackColor,
                          fontSize: Constants.fontSizeMidTitle,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: " #$dayCount",
                        style: TextStyle(
                          color: Constants.mainBlackColor,
                          fontSize: Constants.fontSizeMidTitle,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),

                MyText(
                  textContent: "$date",
                  textSize: Constants.fontSizeMiniTitle,
                  textWeight: FontWeight.normal,
                  textColor: Constants.mainBlackColor,
                ),
              ],
            ),
            SizedBox(width: 30),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Constants.mainColor),
              ),
              onPressed: () {},
              child: MyText(
                textContent: "$buttonText",
                textSize: Constants.fontSizeMidTitle,
                textWeight: FontWeight.w600,
                textColor: Constants.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInvitationCard(
    String name,
    int dayCount,
    String image,
    String reason,
  ) {
    return Container(
      padding: Constants.paddingCard,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Constants.horizontalDividerColor),
        ),
        color: Constants.mainWhiteTone,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // card image
          Stack(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 2,
                bottom: 2,
                child: Container(
                  alignment: Alignment.center,
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Constants.mainWhiteTone,
                      width: 3,
                    ),
                    color: Constants.mainLigthGreenColor,
                  ),
                  child: SizedBox(
                    height: 16,
                    width: 16,
                    child: Image.asset("assets/icons/news_icon.png"),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          // card infos
          Flexible(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    textContent: "Haber Bülteni · Haftalık",
                    textSize: Constants.fontSizeMiniTitle,
                    textWeight: FontWeight.normal,
                    textColor: Constants.mainLightGrey,
                  ),
                  SizedBox(height: 4),
                  // rich text for card content
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$name",
                          style: TextStyle(
                            color: Constants.mainBlackColor,
                            fontSize: Constants.fontSizeMidTitle,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " sizi",
                          style: TextStyle(
                            color: Constants.mainBlackColor,
                            fontSize: Constants.fontSizeMidTitle,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          text: " $reason",
                          style: TextStyle(
                            color: Constants.mainBlackColor,
                            fontSize: Constants.fontSizeMidTitle,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " için abone olmaya davet etti",
                          style: TextStyle(
                            color: Constants.mainBlackColor,
                            fontSize: Constants.fontSizeMidTitle,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4),
                  MyText(
                    textContent: "$dayCount gün önce",
                    textSize: Constants.fontSizeMiniTitle,
                    textWeight: FontWeight.normal,
                    textColor: Constants.mainLightGrey,
                  ),
                ],
              ),
            ),
          ),
          // spacer for responsive
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: Row(
              children: [
                // cross button
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Constants.mainLightGrey),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.close, color: Constants.mainDarkGreyColor),
                ),
                SizedBox(width: 14),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Constants.mainColor),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.check, color: Constants.mainColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildGridContainer() {
    return Container(
      padding: Constants.paddingCard,
      color: Constants.mainWhiteTone,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          _buildTitleText(
            "Son faaliyetlerinize göre tanıyabileceğiniz kişiler",
          ),
          SizedBox(height: 10),
          // gridview 
          GridView.builder(
            shrinkWrap: true, // get shrinks to large of gridview
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // container count for each row
              crossAxisSpacing: 10, // spacer horizontal
              mainAxisSpacing: 10, // spacer vertical
              childAspectRatio: 1 / 1.25, // width/height ratio
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(blurRadius: 6, color: Colors.black12, offset: Offset(2, 2)),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      children: [
                        // top section (image)
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/images/profile_top_placeholder.png"),
                              fit: BoxFit.cover),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
          
                        // bottom section (details)
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 50,
                                left: 0,
                                right: 0,
                                bottom: 12,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Latif ULU",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 6,),
                                      SizedBox(height: 14, width: 14, child: Image.asset("assets/icons/premium_logo.png"),)
                                    ],
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Kadir Has ÜniversitesSilivri Teknopark Gene Kadir Has ÜniversitesiSilivri Teknopark Gene Kadir Has ÜniversitesiSilivri Teknopark Gene Kadir Has ÜniversitesiSilivri Teknopark Gene",
                                    style: TextStyle(fontSize: 12),
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 6),
                                  Spacer(),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            radius: 12,
                                            backgroundImage: AssetImage(
                                              "assets/images/pp_man1.png",
                                            ),
                                          ),
                                          SizedBox(width: 6),
                                          Text(
                                            "Hüseyin, ortak bağlantı",
                                            style: TextStyle(fontSize: 11),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10),
                                      // bağlantı kur button
                                      Row(
                                        children: [
                                          Expanded(
                                            child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                side: BorderSide(
                                                  color: Constants.mainColor,
                                                ),
                                                foregroundColor:
                                                    Constants.mainColor,
                                                textStyle: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: Text("Bağlantı Kur"),
                                            ),
                                          ),
                                        ],
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
          
                    // circle avatar
                    Positioned(
                      top: 10,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(
                              "assets/images/pp_woman1.png",
                            ),
                          ),
                        ),
                      ),
                    ),
          
                    // close icon
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black54,
                        ),
                        child: Icon(
                          Icons.close,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
