import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/constants.dart';
import 'package:linkedin_clone/post_detail_page.dart';
import 'package:linkedin_clone/widgets/my_divider.dart';
import 'package:linkedin_clone/widgets/my_text.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({super.key});

  @override
  State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            // created circle avatar inside sliver appbar
            // created "mesajlarda ara" textfield
            Expanded(
              // put the textfield inside a container because of giving height.
              child: Container(
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: SizedBox(
                      height: 12,
                      width: 12,
                      child: Icon(Icons.search),
                    ),
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Color(0xffEEF3F7),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Mesajlarda ara",
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            // message icon to go message page
            Icon(Icons.more_vert),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopMessageContainer(),
            // message row
            MyMessageContainer(
              isRead: true, 
              profilePicture: "assets/images/pp_woman1.png", 
              messageContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "Pzr",
              senderName: "Ayşe Kaya",
            ),
            MyDivider(),
            MyMessageContainer(
              isRead: true, 
              profilePicture: "assets/images/pp_man1.png", 
              messageContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "24 Haz 2025",
              senderName: "Selim Güven",
            ),
            MyDivider(),
            MyMessageContainer(
              isRead: false, 
              profilePicture: "assets/images/pp_woman2.png", 
              messageContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "20 May 2025",
              senderName: "Nazlı Kuyu",
            ),
            MyDivider(),
            MyMessageContainer(
              isRead: true, 
              profilePicture: "assets/images/pp_woman3.png", 
              messageContent: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", date: "20 May 2025",
              senderName: "Leyla Koşar",
            ),
            MyDivider(),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 40, right: 20),
        child: FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {},
          child: Icon(Icons.edit),
        ),
      ),
    );
  }
}



class MyMessageContainer extends StatelessWidget {
  final bool isRead;
  final String senderName;
  final String profilePicture;
  final String messageContent;
  final String date;

  const MyMessageContainer({super.key, required this.isRead, required this.profilePicture, required this.messageContent, required this.date, required this.senderName});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isRead ? Colors.white : Constants.backGroundBlueTone,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
        child: Row(
          children: [
            CircleAvatar(backgroundColor: Colors.blue, radius: 26,
            child: Image.asset(profilePicture),
            
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    //  top: name and date
                    Row(
                      children: [
                        MyText(
                          textContent: senderName,
                          textSize: 18,
                          textWeight: FontWeight.w400,
                          textColor: Colors.black87,
                        ),
                        Spacer(),
                        MyText(
                          textContent: date,
                          textSize: 14,
                          textWeight: FontWeight.w400,
                          textColor: Colors.black54,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    // bottom, content and count
                    Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: MyText(
                            textContent:
                                messageContent,
                            textSize: 14,
                            textWeight: FontWeight.w400,
                            textColor: Colors.black,
                            maxLines: 2,
                          ),
                        ),
                        Spacer(),
                        !isRead
                            ? Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Constants.mainColor,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: MyText(
                                  textContent: "2",
                                  textSize: 12,
                                  textWeight: FontWeight.w400,
                                  textColor: Colors.white,
                                ),
                              ),
                            )
                            : SizedBox.shrink(), // shows nothing
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TopMessageContainer extends StatelessWidget {
  const TopMessageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: Constants.butonsRowHeight,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                Constants.buttonRowShadow
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Constants.buttonBgGreen,
                        padding: EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      label: MyText(
                        textContent: "Odaklı",
                        textSize: 16,
                        textWeight: FontWeight.w600,
                        textColor: Colors.white,
                      ),
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 26,
                      ),
                      iconAlignment: IconAlignment.end,
                    ),
                    SizedBox(width: 10),
                    VerticalDivider(
                      width: 2,
                      color: Constants.verticalDividerColor,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(width: 10),
                    // outlined buttons
                    MyOutlinedButton(textButton: "İş İlanları"),
                    SizedBox(width: 10),
                    MyOutlinedButton(textButton: "Okunmayan"),
                    SizedBox(width: 10),
                    MyOutlinedButton(textButton: "Taslaklar"),
                    SizedBox(width: 10),
                    MyOutlinedButton(textButton: "InMail"),
                    // text button
                    TextButton(
                      onPressed: () {},
                      child: MyText(
                        textContent: "Tüm Filtreler",
                        textSize: 16,
                        textWeight: FontWeight.bold,
                        textColor: const Color.fromARGB(221, 51, 51, 51),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}


