import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/constants.dart';
import 'package:linkedin_clone/views/home/post_card.dart';
import 'package:linkedin_clone/views/messages/messages_page.dart';
import 'package:linkedin_clone/widgets/custom_drawer.dart';
import 'package:linkedin_clone/widgets/custom_sliver_appbar.dart';

class HomePage extends StatefulWidget {
  final ScrollController scrollController;
  const HomePage({super.key, required this.scrollController});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // global key for drawer, can manage from everywhere easily
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.bgPageColor,
      // global key
      key: _scaffoldKey,
      // Drawer
      drawer: CustomDrawer(),
      body: CustomScrollView(
        slivers: [
          // Custom SliverAppBar kullanın
          CustomSliverAppBar(
            // callback function
            onProfileTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            // callback function
            onMessageTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => MessagesPage()),
              );
            },
          ),
          // Posts listesi
          SliverToBoxAdapter(
            child: ListView(
              controller: widget.scrollController,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                PostCard(
                  companyLogo: "assets/icons/hyundai_logo.png",
                  companyName: "Hyundai",
                  postImage: "assets/images/post_image2.png",
                  followerCount: "3.2M",
                  minute: "30",
                  commentCount: "11",
                  shareCount: "6",
                ),
                PostCard(
                  companyLogo: "assets/icons/netgo_logo.png",
                  companyName: "Netgo",
                  postImage: "assets/images/post_image4.png",
                  followerCount: "200.120",
                  minute: "7",
                  commentCount: "120",
                  shareCount: "8",
                ),
                PostCard(
                  companyLogo: "assets/icons/netgo_logo.png",
                  companyName: "Netgo",
                  postImage: "assets/images/post_image4.png",
                  followerCount: "200.120",
                  minute: "7",
                  commentCount: "120",
                  shareCount: "8",
                ),
                PostCard(
                  companyLogo: "assets/icons/netgo_logo.png",
                  companyName: "Netgo",
                  postImage: "assets/images/post_image4.png",
                  followerCount: "200.120",
                  minute: "7",
                  commentCount: "120",
                  shareCount: "8",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}