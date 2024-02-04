import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(220, 26, 26, 26),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              "assets/images/letter-o.png", //logo icon
              width: 40,
              height: 40,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        //drawer
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          //network image ile kullanıcı profil fotoğrafı
                          "https://media.istockphoto.com/id/1469330608/tr/vekt%C3%B6r/adorable-bunny-rabbit-in-a-circle-cute-cartoon-vector-animal-illustration-kawaii-animal.jpg?s=612x612&w=0&k=20&c=68fkRugVaJuAb-mCjohpb6BydIyh9QZHLtD9App4JlE="),
                      radius: 40, //gerekli stillendirmeler
                    ),
                  ),
                  SizedBox(width: 10),
                  Text("Profile"),
                ],
              ),
            ),
            InkWell(
              //tıklanma özelliği ve yönlendirme
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/home", (Route<dynamic> Route) => false);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      size: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/userPreference");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.toggle_off,
                      size: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "User Preferences",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/contact");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.contacts,
                      size: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Contact",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/login", (Route<dynamic> Route) => false);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 24,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Logout",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Header_menu(),
          Expanded(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Poster(),
                    movies(),
                    movieItems(),
                    cartoonItems(),
                    turkishseriesItems(),
                    sitcomItems()
                  ],
                ),
              ),
            ),
          ),
          Bottom_menu()
        ],
      ),
    );
  }

  //film türleri
  Container sitcomItems() => Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sitcom",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  movieItem("assets/images/sitcom1.jpg"),
                  movieItem("assets/images/sitcom2.jpg"),
                  movieItem("assets/images/sitcom3.jpg"),
                  movieItem("assets/images/sitcom4.jpg"),
                  movieItem("assets/images/sitcom5.jpg"),
                  movieItem("assets/images/sitcom6.jpg"),
                ],
              ),
            )
          ],
        ),
      );

  Container turkishseriesItems() => Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Turkish",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  movieItem("assets/images/turk1.jpg"),
                  movieItem("assets/images/turk2.jpg"),
                  movieItem("assets/images/turk3.png"),
                  movieItem("assets/images/turk5.jpg"),
                  movieItem("assets/images/turk4.jpg"),
                  movieItem("assets/images/turk6.jpg"),
                ],
              ),
            )
          ],
        ),
      );

  Container cartoonItems() => Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Cartoon",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  movieItem("assets/images/cartoon1.jpg"),
                  movieItem("assets/images/cartoon2.jpg"),
                  movieItem("assets/images/cartoon3.jpg"),
                  movieItem("assets/images/cartoon4.jpg"),
                  movieItem("assets/images/cartoon5.jpg"),
                  movieItem("assets/images/cartoon6.jpg"),
                ],
              ),
            )
          ],
        ),
      );

  Widget movieItems() => Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Movie",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  movieItem("assets/images/movie1.jpg"),
                  movieItem("assets/images/movie2.jpg"),
                  movieItem("assets/images/movie3.jpeg"),
                  movieItem("assets/images/movie4.jpeg"),
                  movieItem("assets/images/movie5.jpg"),
                  movieItem("assets/images/movie6.jpg"),
                ],
              ),
            )
          ],
        ),
      );

  Widget Poster() => Container(
      //ana ekrandaki büyük img
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6.0),
            child: Image.asset(
              "assets/images/poster.jpeg",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("YOU Now Available", style: TextStyle(fontSize: 15)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 106, 100, 100),
                      width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  children: [
                    //poster ve yazının altındaki küçük kutular(watch now, add watchlist)
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(Icons.play_arrow, size: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Watch now", style: TextStyle(fontSize: 13)),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 106, 100, 100),
                      width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(Icons.add, size: 18),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Text("Add Watchlist", style: TextStyle(fontSize: 13)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ));
  Widget movies() => Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Tv Series",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  movieItem("assets/images/series1.jpg"),
                  movieItem("assets/images/series2.jpg"),
                  movieItem("assets/images/series3.jpg"),
                  movieItem("assets/images/series4.jpg"),
                  movieItem("assets/images/series5.jpg"),
                  movieItem("assets/images/series6.jpg"),
                ],
              ),
            )
          ],
        ),
      );

  Widget movieItem(String photo) => Container(
        padding: EdgeInsets.all(5.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                photo,
                width: 120,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      );

  Widget Header_menu() => Container(
        width: double.infinity,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("All ", style: TextStyle(fontSize: 18)),
            Text("Movies ", style: TextStyle(fontSize: 18)),
            Text("Series", style: TextStyle(fontSize: 18)),
            Text("Categories", style: TextStyle(fontSize: 18)),
          ],
        ),
      );

  Widget Bottom_menu() => Container(
        width: double.infinity,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Bottom_item("Home", Icons.home, true),
            Bottom_item("Search", Icons.search, false),
            Bottom_item("Popular", Icons.movie, false),
            Bottom_item("Account", Icons.account_circle, false),
          ],
        ),
      );

  Widget Bottom_item(String title, IconData icon, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(height: 7),
          Icon(icon),
          Text(
            title,
            style: TextStyle(
              fontSize: 12,
              color: isSelected
                  ? const Color.fromARGB(255, 40, 129, 202)
                  : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
