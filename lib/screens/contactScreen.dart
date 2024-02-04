import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class contactScreen extends StatelessWidget {
  const contactScreen({Key? key});

  instagram() {
    final Uri uri = Uri.parse("https://www.instagram.com");
    launchUrl(uri);
  }

  linkedin() {
    final Uri uri = Uri.parse("https://tr.linkedin.com/");
    launchUrl(uri);
  }

  github() {
    final Uri uri = Uri.parse("https://github.com/?ysclid=ls7rgmvh4c738830497");
    launchUrl(uri);
  }

  call() {
    final Uri uri = Uri.parse("tel:+905555555555");
    launchUrl(uri);
  }

  sms() {
    final Uri uri = Uri.parse("sms:+905555555555");
    launchUrl(uri);
  }

  mail() {
    final Uri uri = Uri.parse("mailto:afdgfdgfdgfdg.com");
    launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/letter-o.png",
                    ),
                    radius: 40,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ContactButton(
                  icon: Icons.mail,
                  label: "Send a mail",
                ),
                SizedBox(width: 10),
                ContactButton(
                  icon: Icons.call,
                  label: "Make a call",
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: call,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.call,
                            size: 24,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Call",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: sms,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.sms,
                            size: 24,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Sms",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: mail,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.mail,
                            size: 24,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Mail",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: instagram,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          Text(
                            "İnstagram",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: linkedin,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          Text(
                            "Linkedin",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: github,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(width: 8),
                          Text(
                            "Github",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  final IconData icon;
  final String label;

  ContactButton({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 106, 100, 100),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(icon, size: 18),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              label,
              style: TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}
