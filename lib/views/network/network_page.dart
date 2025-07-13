import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/constants.dart';
import 'package:linkedin_clone/views/messages/messages_page.dart';
import 'package:linkedin_clone/views/network/network_buyut.dart';
import 'package:linkedin_clone/views/network/network_haberler.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  @override
  Widget build(BuildContext context) {
    // there is tabbar so started with DefaultTabController
    return DefaultTabController(
      // tab count
      length: 2,
      child: Scaffold(
        backgroundColor: Constants.bgPageColor,
        body: NestedScrollView(
          headerSliverBuilder:
              (context, innerBoxIsScrolled) => [
                // sliver appbar, will be invisible while scrolling
                SliverAppBar(
                  backgroundColor: Constants.mainWhiteTone,
                  toolbarHeight: Constants.sliverAppbarHeight,
                  title: Row(
                    children: [
                      // created circle avatar inside sliver appbar
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/profile_picture_placeholder.png',
                        ),
                        radius: Constants.appbarCircleAvatarRadius,
                      ),
                      SizedBox(width: Constants.appbarSizedBox),
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
                              hintText: "Arama Yap",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: Constants.appbarSizedBox),
                      // message icon to go message page
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MessagesPage(),
                            ),
                          );
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

                // tabbar will be sticky while scrolling
                SliverPersistentHeader(
                  pinned: true, // to be sticky
                  // created tabbar and used _TabbarDelegate
                  delegate: _TabBarDelegate(
                    TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Constants.tabbarSelectedLabelColor,
                      labelStyle: TextStyle(
                        fontSize: Constants.tabbarFontsize,
                        fontWeight: Constants.tabbarLabelWeight
                      ),
                      unselectedLabelColor: Constants.mainDarkGreyColor,
                      indicatorColor: Constants.mainGreenColor,
                      tabs: [
                        Tab(text: "Büyüt"),
                        Tab(text: "Ağınızdan haberler"),
                      ],
                    ),
                  ),
                ),
              ],
          body: TabBarView(children: [
            NetworkBuyut(),
            NetworkHaberler(),
          ]),
        ),
      ),
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar; // The TabBar widget to be pinned at the top

  _TabBarDelegate(this._tabBar); // Constructor to receive the TabBar

  @override
  double get minExtent => _tabBar.preferredSize.height; // Minimum height equals TabBar's height

  @override
  double get maxExtent => _tabBar.preferredSize.height; // Maximum height also equals TabBar's height

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white, // Background color of the pinned header
      child: _tabBar, // Display the TabBar
    );
  }

  @override
  bool shouldRebuild(_TabBarDelegate oldDelegate) {
    return false; // No need to rebuild unless the TabBar changes
  }
}

