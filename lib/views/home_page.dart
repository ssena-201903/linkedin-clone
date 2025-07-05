import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // custom scrollview tanımalandı içinde sliver appbar ve sliver list olacak.
      body: CustomScrollView(
        slivers: [
          // sliver appbar oluşturuldu.
          SliverAppBar(
            backgroundColor: Colors.white,
            toolbarHeight: 50,
            title: Row(
              children: [
                // appbardaki circle avatar oluşturuldu.
                CircleAvatar(backgroundImage: AssetImage('assets/icons/profile_picture_placeholder.png'), radius: 16,),
                SizedBox(width: 10,),
                // arama yap textfieldı oluşturuldu.
                Expanded(
                  child: Container(
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_rounded, size: 20,),
                        contentPadding: EdgeInsets.zero,
                        filled: true,
                        fillColor: Color(0xffEEF3F7),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide.none
                        ),
                        hintText: "Arama Yap"
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                SizedBox(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/icons/message.png"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: Padding(
//           padding: const EdgeInsets.only(left: 20),
//           child: SizedBox(
//             height: 10,
//             child: Image.asset("assets/icons/profile_picture_placeholder.png"),
//           ),
//         ),
//         title: Row(
//           children: [
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 10),
//                 alignment: Alignment.centerLeft,
//                 height: 30,
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 241, 241, 241),
//                   borderRadius: BorderRadius.circular(4)
//                 ),
//                 child: Row(
//                   children: [
//                     Icon(Icons.search, size: 20,),
//                     SizedBox(width: 10,),
//                     Text("Arama Yap",style: TextStyle(
//                       color: Colors.black38,
//                       fontSize: 14,
//                     ),),
//                   ],
//                 )
//               ),
//             ),
//           ],
//         ),
//         actions: [
//           SizedBox(
//             height: 24,
//             child: Image.asset("assets/icons/message.png"),
//           )
//         ],
//       ),
//       body: ListView(
        
//       ),
//     );