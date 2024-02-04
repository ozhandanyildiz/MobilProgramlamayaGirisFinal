import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 130),
          child: Column(
            children: [
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(                         //network image ten img çekme ve avatar özelliği verme ve stillendirme.
                  backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/id/1469330608/tr/vekt%C3%B6r/adorable-bunny-rabbit-in-a-circle-cute-cartoon-vector-animal-illustration-kawaii-animal.jpg?s=612x612&w=0&k=20&c=68fkRugVaJuAb-mCjohpb6BydIyh9QZHLtD9App4JlE=",
                  ),
                  radius: 40,
                ),
              ),
              SizedBox(width: 10),
              RichText(                               
                text: TextSpan(
                  text: 'Profile',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Divider(),              //divider ile çizgi
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  RichText(
                    text: TextSpan(
                      text: 'Watchlist',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: 'Liked',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: 'Reviews',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      text: 'Settings',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        "/login",
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 8),
                        RichText(
                          text: TextSpan(
                            text: 'Logout',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
