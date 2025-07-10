import 'package:flutter/material.dart';

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
            Icon(Icons.arrow_back),
            SizedBox(width: 16),
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
                    hintText: "Arama Yap",
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
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(onPressed: (){}, child: Text("data")),
            ],
          ),
        ],
      ),
    );
  }
}
