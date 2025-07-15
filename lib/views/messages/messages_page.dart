import 'package:flutter/material.dart';
import 'package:linkedin_clone/views/messages/message_card.dart';
import 'package:linkedin_clone/views/messages/message_container.dart';
import 'package:linkedin_clone/widgets/my_divider.dart';

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
            MessageContainer(),
            // message row
            MessageCard(
              isRead: true,
              profilePicture: "assets/images/pp_woman1.png",
              messageContent:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              date: "Pzr",
              senderName: "Ayşe Kaya",
            ),
            MyDivider(),
            MessageCard(
              isRead: true,
              profilePicture: "assets/images/pp_man1.png",
              messageContent:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              date: "24 Haz 2025",
              senderName: "Selim Güven",
            ),
            MyDivider(),
            MessageCard(
              isRead: false,
              profilePicture: "assets/images/pp_woman2.png",
              messageContent:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              date: "20 May 2025",
              senderName: "Nazlı Kuyu",
            ),
            MyDivider(),
            MessageCard(
              isRead: true,
              profilePicture: "assets/images/pp_woman3.png",
              messageContent:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
              date: "20 May 2025",
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
