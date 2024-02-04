import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences extends StatefulWidget {
  const UserPreferences({super.key});

  @override
  State<UserPreferences> createState() => _UserPreferencesState();
}

class _UserPreferencesState extends State<UserPreferences> {
  String profile = "";
  TextEditingController profileController = TextEditingController(text: "");
  bool type1 = false;
  bool type2 = false;
  bool type3 = false;
  bool type4 = false;
  bool type5 = false;                               
  bool type6 = false;
  bool type7 = false;
  bool type8 = false;
  bool type9 = false;
  bool type10 = false;
  bool type11 = false;
  bool type12 = false;
  bool type13 = false;
  bool type14 = false;
  bool type15 = false;

  @override
  void initState() {
    super.initState();
    readData();
  }
   //verileri saklamak için kullanılan metot
  storeData() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    storage.setString("Profile Name", profileController.text);
    storage.setBool("Action", type1);
    storage.setBool("Adventure", type2);
    storage.setBool("Cartoon", type3);
    storage.setBool("Comedy", type4);
    storage.setBool("Drama", type5);
    storage.setBool("Documentary", type6);
    storage.setBool("Fantasy", type7);
    storage.setBool("Horror", type8);
    storage.setBool("Sci-Fi", type9);
    storage.setBool("Sitcom", type10);
    storage.setBool("Science-Fiction", type11);
    storage.setBool("Thriller", type12);
    storage.setBool("Musical", type13);
    storage.setBool("Western", type14);
    storage.setBool("Crime", type15);

    ScaffoldMessenger.of(context).showSnackBar(   //kaydedince altta çıkan yeşil succesfull yazısı ve kutusu
      SnackBar(
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Succesfull",
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
        // asenkron bir şekilde verileri okuma
  readData() async {
    final SharedPreferences storage = await SharedPreferences.getInstance();
    var profileNamevaraible = storage.getString("Profile Name");
    var type1 = storage.getBool("Action");
    var type2 = storage.getBool("Adventure");
    var type3 = storage.getBool("Cartoon");
    var type4 = storage.getBool("Comedy");
    var type5 = storage.getBool("Drama");
    var type6 = storage.getBool("Documentary");
    var type7 = storage.getBool("Fantasy");
    var type8 = storage.getBool("Horror");
    var type9 = storage.getBool("Sci-Fi");
    var type10 = storage.getBool("Sitcom");
    var type11 = storage.getBool("Science-Fiction");
    var type12 = storage.getBool("Thriller");
    var type13 = storage.getBool("Musical");
    var type14 = storage.getBool("Western");
    var type15 = storage.getBool("Crime");

    setState(() {
      profileController.text = profileNamevaraible ?? "";
      this.type1 = type1 ?? false;
      this.type2 = type2 ?? false;
      this.type3 = type3 ?? false;
      this.type4 = type4 ?? false;
      this.type5 = type5 ?? false;
      this.type6 = type6 ?? false;
      this.type7 = type7 ?? false;
      this.type8 = type8 ?? false;
      this.type9 = type9 ?? false;
      this.type10 = type10 ?? false;
      this.type11 = type11 ?? false;
      this.type12 = type12 ?? false;
      this.type13 = type13 ?? false;
      this.type14 = type14 ?? false;
      this.type15 = type15 ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/letter-o.png",
              width: 40,
              height: 40,
            ),
            Text("zhanTV"),
          ],
        ),
        actions: [
          InkWell(
            onTap: storeData,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.save),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("Save"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "For a better user experience, please mark your favorite genres.",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text("Profile Name: "),
                    Gap(12),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 136, 133, 133),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextField(
                          controller: profileController,
                          decoration: InputDecoration(
                            hintText: "Profile Name",
                          ),
                        ),
                      ),
                      // controller: profileController,
                    ),
                  ],
                ),
                SizedBox(height: 20),    
                Row(   //film türleri ve switchlerini tanımlama ve uyumlu hale getirme
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Action"),
                    Switch(
                        value: type1,
                        onChanged: (value) {
                          setState(() {
                            type1 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Adventure"),
                    Switch(
                        value: type2,
                        onChanged: (value) {
                          setState(() {
                            type2 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Cartoon"),
                    Switch(
                        value: type3,
                        onChanged: (value) {
                          setState(() {
                            type3 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Comedy"),
                    Switch(
                        value: type4,
                        onChanged: (value) {
                          setState(() {
                            type4 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Drama"),
                    Switch(
                        value: type5,
                        onChanged: (value) {
                          setState(() {
                            type5 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Documentary"),
                    Switch(
                        value: type6,
                        onChanged: (value) {
                          setState(() {
                            type6 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Fantasy"),
                    Switch(
                        value: type7,
                        onChanged: (value) {
                          setState(() {
                            type7 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Horror"),
                    Switch(
                        value: type8,
                        onChanged: (value) {
                          setState(() {
                            type8 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sci-Fi"),
                    Switch(
                        value: type9,
                        onChanged: (value) {
                          setState(() {
                            type9 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sitcom"),
                    Switch(
                        value: type10,
                        onChanged: (value) {
                          setState(() {
                            type10 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Science-Fiction"),
                    Switch(
                        value: type11,
                        onChanged: (value) {
                          setState(() {
                            type11 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Thriller"),
                    Switch(
                        value: type12,
                        onChanged: (value) {
                          setState(() {
                            type12 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Musical"),
                    Switch(
                        value: type13,
                        onChanged: (value) {
                          setState(() {
                            type13 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Western"),
                    Switch(
                        value: type14,
                        onChanged: (value) {
                          setState(() {
                            type14 = value;
                          });
                        }),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Crime"),
                    Switch(
                        value: type15,
                        onChanged: (value) {
                          setState(() {
                            type15 = value;
                          });
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
