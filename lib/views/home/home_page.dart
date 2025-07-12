import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/constants.dart';
import 'package:linkedin_clone/views/home/post_card.dart';
import 'package:linkedin_clone/views/messages/messages_page.dart';

class HomePage extends StatefulWidget {
  final ScrollController scrollController;
  const HomePage({super.key, required this.scrollController});

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
            backgroundColor: Constants.mainWhiteTone,
            toolbarHeight: Constants.sliverAppbarHeight,
            title: Row(
              children: [
                // created circle avatar inside sliver appbar
                CircleAvatar(backgroundImage: AssetImage('assets/images/profile_picture_placeholder.png'), radius: Constants.appbarCircleAvatarRadius,),
                SizedBox(width: Constants.appbarSizedBox,),
                // created "arama yap" textfield
                Expanded(
                  // put the textfield inside a container because of giving height.
                  child: Container(
                    height: Constants.appbarSearchHeight,
                    child: TextField(
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
                        hintText: "Arama Yap"
                      ),
                    ),
                  ),
                ),
                SizedBox(width: Constants.appbarSizedBox,),
                // message icon to go message page
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessagesPage()));
                  },
                  child: SizedBox(
                    height: Constants.appbarIconSize,
                    width: Constants.appbarIconSize,
                    child: Image.asset("assets/icons/message.png"),
                  ),
                ),
              ],
            ),
          ),
          // used sliverboxadapter to use not sliver widgets such as listview
          SliverToBoxAdapter(
          child: ListView(
            controller: widget.scrollController,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              PostCard(companyLogo: "assets/icons/hyundai_logo.png", companyName: "Hyundai", postImage: "assets/images/post_image2.png", followerCount: "3.2M", minute: "30", commentCount: "11", shareCount: "6"),
              PostCard(companyLogo: "assets/icons/netgo_logo.png", companyName: "Netgo", postImage: "assets/images/post_image4.png", followerCount: "200.120", minute: "7", commentCount: "120", shareCount: "8"),
              PostCard(companyLogo: "assets/icons/netgo_logo.png", companyName: "Netgo", postImage: "assets/images/post_image4.png", followerCount: "200.120", minute: "7", commentCount: "120", shareCount: "8"),
              PostCard(companyLogo: "assets/icons/netgo_logo.png", companyName: "Netgo", postImage: "assets/images/post_image4.png", followerCount: "200.120", minute: "7", commentCount: "120", shareCount: "8")
            ],
          ),
        )
        ],
      );
  }
}

