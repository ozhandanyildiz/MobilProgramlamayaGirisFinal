import 'package:gap/gap.dart';
import 'package:ozhantv/screens/responsive.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  Screen device = Screen.mobile;
  drawScreen() {
    switch (device) {                                      //import edilen responsive sayfasından alınan verilenrin kullanılması
      case (Screen.mobile):
        return loginForm(context);
      case (Screen.tablet):
        return Row(
          children: [
            Image.asset(
              "assets/images/letter-o.png",                             
              width: 250,
              height: 250,
            ),
            SizedBox(width: 365, height: 550, child: loginForm(context)),
          ],
        );
      case (Screen.desktop):
        return Row(
          children: [
            Gap(100),
            Row(
              children: [
                Image.asset(
                  "assets/images/letter-o.png",
                  width: 250,
                  height: 250,
                ),
                Gap(100),
                SizedBox(width: 395, height: 900, child: loginForm(context)),
              ],
            ),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      device = detectScreeen(MediaQuery.of(context).size);
    });

    return Scaffold(
      appBar: AppBar(),
      body: drawScreen(),
    );
  }

  Padding loginForm(BuildContext context) {    //giriş ekranı etkileşimler,textler,textfieldlar vs. ve gerekli stillendirmeler ve yönlendirme.
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100),
          Text("E-mail"),
          SizedBox(height: 6),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 136, 133, 133),
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "E-mail",
              ),
            ),
          ),
          SizedBox(height: 15),
          Text("Password"),
          SizedBox(height: 6),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 136, 133, 133),
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, "/home", (Route<dynamic> Route) => false);
                },
                child: Text("login"),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(                          //git ve geri dönme
                  context, "/register", (Route<dynamic> Route) => false);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.logout,
                    size: 20,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Not a member? Sign up",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
