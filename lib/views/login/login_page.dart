import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants/constants.dart';
import 'package:linkedin_clone/widgets/my_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainWhiteTone,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              child: Image.asset("assets/images/linkedin_logo_brand.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              // title, buttons, form
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                    textContent: "Oturum aç",
                    textSize: 30,
                    textWeight: FontWeight.bold,
                    textColor: Constants.mainBlackColor,
                  ),
                  SizedBox(height: 10),
                  // veya linkedinden katılın
                  RichText(
                    text: TextSpan(
                      text: "veya ",
                      style: TextStyle(color: Constants.mainLightGrey),
                      children: [
                        TextSpan(
                          text: "Linkedin'e Katılın",
                          style: TextStyle(
                            color: Constants.mainColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // button google
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Google ile oturum açın",
                              style: TextStyle(
                                color: Constants.mainDarkGreyColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            icon: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                "assets/images/google_logo.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // button apple
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Apple ile oturum açın",
                              style: TextStyle(
                                color: Constants.mainDarkGreyColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            icon: SizedBox(
                              height: 20,
                              width: 20,
                              child: Image.asset(
                                "assets/images/apple_logo.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // button facebook
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: OutlinedButton.icon(
                            onPressed: () {},
                            label: Text(
                              "Facebook ile oturum açın",
                              style: TextStyle(
                                color: Constants.mainDarkGreyColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            icon: SizedBox(
                              height: 25,
                              width: 25,
                              child: Image.asset(
                                "assets/images/facebook_logo.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // "veya" row
                  Row(
                    children: [
                      Expanded(
                        child: Divider(color: Constants.horizontalDividerColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text("veya"),
                      ),
                      Expanded(
                        child: Divider(color: Constants.horizontalDividerColor),
                      ),
                    ],
                  ),
                  // email textfield
                  TextField(
                    decoration: InputDecoration(
                      label: Text("Eposta veya Telefon"),
                      labelStyle: TextStyle(
                        color: Constants.mainLightGrey,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // şifre textfield
                  TextField(
                    decoration: InputDecoration(
                      label: Text("Şifre"),
                      labelStyle: TextStyle(
                        color: Constants.mainLightGrey,
                        fontSize: 16,
                      ),
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  ),
                  SizedBox(height: 20),
                  // "beni hatırla" row
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
