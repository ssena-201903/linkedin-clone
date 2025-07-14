import 'package:flutter/material.dart';
import 'package:linkedin_clone/views/home/post_detail_card.dart';
import 'package:linkedin_clone/widgets/my_text.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actionsPadding: EdgeInsets.all(20),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                PostDetailCard(
                  companyLogo: "assets/icons/hyundai_logo.png",
                  companyName: "Hyundai",
                  postImage: "assets/images/post_image2.png",
                  followerCount: "3.2M",
                  minute: "30",
                  commentCount: "1",
                  shareCount: "6",
                ),
                // reaksiyonlar title
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      MyText(
                        textContent: "Reaksiyonlar",
                        textSize: 16,
                        textWeight: FontWeight.w400,
                        textColor: Colors.black87,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Image.asset("assets/images/pp_woman1.png"),
                          ),
                          Positioned(
                            bottom: 2,
                            left: 26,
                            child: SizedBox(
                              height: 16,
                              width: 16,
                              child: Image.asset(
                                "assets/icons/applause_reaction.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 12),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Image.asset("assets/images/pp_woman2.png"),
                          ),
                          Positioned(
                            bottom: 2,
                            left: 26,
                            child: SizedBox(
                              height: 16,
                              width: 16,
                              child: Image.asset(
                                "assets/icons/like_reaction.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 12),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Image.asset("assets/images/pp_man1.png"),
                          ),
                          Positioned(
                            bottom: 2,
                            left: 26,
                            child: SizedBox(
                              height: 16,
                              width: 16,
                              child: Image.asset(
                                "assets/icons/love_reaction.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 12),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Image.asset("assets/images/pp_man2.png"),
                          ),
                          Positioned(
                            bottom: 2,
                            left: 26,
                            child: SizedBox(
                              height: 16,
                              width: 16,
                              child: Image.asset(
                                "assets/icons/idea_reaction.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 12),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Image.asset("assets/images/pp_man3.png"),
                          ),
                          Positioned(
                            bottom: 2,
                            left: 26,
                            child: SizedBox(
                              height: 16,
                              width: 16,
                              child: Image.asset(
                                "assets/icons/like_reaction.png",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // comment container
                MyCommentContainer(),
              ],
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, -2),
                        blurRadius: 20,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MyOutlinedButton(textButton: "Size katılıyorum"),
                              SizedBox(width: 10,),
                              MyOutlinedButton(textButton: "Doğru söylediniz",),
                              SizedBox(width: 10,),
                              MyOutlinedButton(textButton: "Çok iyi bir bakış açısı",),
                              SizedBox(width: 10,),
                              MyOutlinedButton(textButton: "Katılıyorum",),
                              SizedBox(width: 10,),
                            ],
                          ),
                        ),
                      ),
                      // comment text field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              child: Image.asset("assets/images/profile_picture_placeholder.png"),
                            ),
                            SizedBox(width: 20,),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerLeft,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12
                                  ),
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                                  child: MyText(textContent: "Yorum ekle...", textSize: 14, textWeight: FontWeight.w400, textColor: Colors.black54),
                                ),
                              ),
                            ),
                            SizedBox(width: 20,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyOutlinedButton extends StatelessWidget {
  final String textButton;
  const MyOutlinedButton({
    super.key, required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 12,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        side: BorderSide(color: Colors.black38),
      ),
      onPressed: () {},
      child: MyText(
        textContent: textButton,
        textSize: 16,
        textWeight: FontWeight.w900,
        textColor: const Color.fromARGB(193, 0, 0, 0),
      ),
    );
  }
}

class MyCommentContainer extends StatelessWidget {
  const MyCommentContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // user profile picture
          CircleAvatar(
            radius: 15,
            child: Image.asset("assets/images/pp_woman2.png"),
          ),
          SizedBox(width: 10),
          // info section
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        MyText(
                          textContent: "Selda Yılmaz",
                          textSize: 14,
                          textWeight: FontWeight.bold,
                          textColor: Colors.black87,
                        ),
                        MyText(
                          textContent: " ·",
                          textSize: 18,
                          textWeight: FontWeight.w900,
                          textColor: Colors.black54,
                        ),
                        SizedBox(width: 4),
                        MyText(
                          textContent: "2.",
                          textSize: 12,
                          textWeight: FontWeight.w400,
                          textColor: const Color.fromARGB(221, 83, 83, 83),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyText(
                          textContent: "48 dakika",
                          textSize: 12,
                          textWeight: FontWeight.w400,
                          textColor: const Color.fromARGB(221, 83, 83, 83),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.more_vert, color: Colors.black45, size: 20),
                      ],
                    ),
                  ],
                ),
                MyText(
                  textContent: "IT Business Partner at Hyundai",
                  textSize: 12,
                  textWeight: FontWeight.w400,
                  textColor: Colors.black54,
                ),
                SizedBox(height: 10),
                MyText(
                  textContent:
                      "Bu harika bir haberi gelişmeleri heyecanla bekliyorum!",
                  textSize: 14,
                  textWeight: FontWeight.w400,
                  textColor: Colors.black87,
                ),
                SizedBox(height: 20),
                // like section
                Container(
                  height: 30,
                  child: Row(
                    children: [
                      MyText(
                        textContent: "Beğendim",
                        textSize: 12,
                        textWeight: FontWeight.w600,
                        textColor: Colors.black54,
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        height: 16,
                        width: 16,
                        child: Image.asset("assets/icons/like_reaction.png"),
                      ),
                      SizedBox(width: 5),
                      MyText(
                        textContent: "1",
                        textSize: 12,
                        textWeight: FontWeight.w400,
                        textColor: Colors.black54,
                      ),
                      // vertical divider
                      VerticalDivider(
                        indent: 5,
                        endIndent: 5,
                        color: Colors.black12,
                      ),
                      MyText(
                        textContent: "Yanıtla",
                        textSize: 12,
                        textWeight: FontWeight.w600,
                        textColor: Colors.black54,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
