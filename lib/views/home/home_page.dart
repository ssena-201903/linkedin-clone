import 'package:flutter/material.dart';
import 'package:linkedin_clone/views/home/post_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: [
          // sliver appbar
          SliverAppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 50,
            title: Row(
              children: [
                // created circle avatar inside sliver appbar
                CircleAvatar(backgroundImage: AssetImage('assets/images/profile_picture_placeholder.png'), radius: 16,),
                SizedBox(width: 16,),
                // created "arama yap" textfield
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
                        hintText: "Arama Yap"
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16,),
                // message icon to go message page
                SizedBox(
                  height: 26,
                  width: 26,
                  child: Image.asset("assets/icons/message.png"),
                ),
              ],
            ),
          ),
          // used sliverboxadapter to use not sliver widgets such as listview
          SliverToBoxAdapter(
          child: Column(
            children: [
              SizedBox(height: 8),
              PostCard()
            ],
          ),
        )
        ],
      );
  }
}

