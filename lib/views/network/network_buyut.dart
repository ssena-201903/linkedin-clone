import 'package:flutter/material.dart';

class NetworkBuyut extends StatefulWidget {
  const NetworkBuyut({super.key});

  @override
  State<NetworkBuyut> createState() => _NetworkBuyutState();
}

class _NetworkBuyutState extends State<NetworkBuyut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // network requests gelecek
          Container(
            height: 40,
            color: Colors.orange,
          ),
          // 
        ],
      )
    );
  }
}