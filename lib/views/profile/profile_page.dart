import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/constants.dart';

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
      body: Column(
        children: [
          // profile image section
          _buildTitleSection(),
        ],
      ),
    );
  }
  
  _buildTitleSection() {
    return Column(
      
    );
  }
}
