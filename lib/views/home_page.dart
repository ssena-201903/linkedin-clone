import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // created current index for bottom navbar
  int _currentIndex = 0;

  // path string list for svg icon paths
  final List<String> _passiceIconPaths = [
    "assets/icons/home.png",
    "assets/icons/network.png",
    "assets/icons/make_post.png",
    "assets/icons/notifications.png",
    "assets/icons/jobs.png",
  ];

  // path string list for selected svg icon paths
  final List<String> _activeIconPaths = [
    "assets/icons/home_selected.png",
    "assets/icons/network_selected.png",
    "assets/icons/make_post.png",
    "assets/icons/notifications_selected.png",
    "assets/icons/jobs_selected.png",
  ];

  // created private method for building dynamic icon
  Widget _buildIcon(int index){
    // if current index equals to coming index play active icon, otherwise play passive icon
    String path = _currentIndex == index
    ? _activeIconPaths[index]
    : _passiceIconPaths[index];

    // return svg icon
    return Image.asset(
      path,
      width: 24,
      height: 24,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // added color to background
      backgroundColor: Color(0xffE8E5DD),
      // created custom scrolview and will be created sliver appbar and sliverlist inside it.
      body: CustomScrollView(
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
        ],
      ),
      // created bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (value) {
          // to change current page actively, used setState method
          setState(() {
            _currentIndex = value;
          });
        },
        // initialized bottom navbar items by using list generate because we need to create dynamic bottom navbar items
        items: List.generate(_activeIconPaths.length, (index){
          return BottomNavigationBarItem(
            icon: _buildIcon(index), 
            label: ["Ana Sayfa", "Profesyonel Ağım", "Yayınla", "Bildirimler", "İş İlanları"][index] );
        })
      ),
    );
  }
}

