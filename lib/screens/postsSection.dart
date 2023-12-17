import 'package:flutter/material.dart';

class PostsSection extends StatelessWidget {
  const PostsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(
          255,
          251,
          251,
          251,
        ),
        body: Column(
          children: [
            header(),
            Expanded(
              child: Container(
                color: Colors.white,
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SearchBox(),
                      Divider(),
                      TopLocations(),
                      Divider(),
                      NearLocations(),
                      Divider(),
                      Suggestions(),
                      Divider(),
                      TopRated(),
                    ],
                  ),
                ),
              ),
            ),
            bottom_menu(),
          ],
        ),
      ),
    );
  }

  Widget Suggestions() => Container(
    child: Column(
          children: [
            TitleItem("Suggestions", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/istanbul2.jpg", "Sultan Ahmet","6km from you", "₺80.0"),
                  LocationItem("assets/images/istanbul1.jpg", "Ayasofya Mosque","9km from you", "₺65.0"),
                  LocationItem("assets/images/istanbul4.jpeg", "Galata Kulesi","6km from you", "₺100.0"),
                  LocationItem("assets/images/istanbul6.jpg", "Galataport","10km from you", "₺0.0"),
                  LocationItem("assets/images/istanbul5.jpg", "Bogazici Kop.","7km from you", "₺14.0"),
                  LocationItem("assets/images/istanbul3.jpg", "Kiz Kulesi","15km from you", "₺50.0"),
                ],
              ),
            ),
          ],
        ),
      );
  
  Widget TopRated() => Container(
    child: Column(
          children: [
            TitleItem("Top Rated", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/istanbul2.jpg", "Sultan Ahmet","6km from you", "₺80.0"),
                  LocationItem("assets/images/istanbul6.jpg", "Galataport","10km from you", "₺0.0"),
                  LocationItem("assets/images/istanbul5.jpg", "Galata Kulesi","6km from you", "₺100.0"),
                  LocationItem("assets/images/istanbul3.jpg", "Bogazici Kop.","7km from you", "₺14.0"),
                  LocationItem("assets/images/istanbul4.jpeg", "Galata Kulesi","6km from you", "₺100.0"),
                  LocationItem("assets/images/istanbul1.jpg", "Ayasofya Mosque","9km from you", "₺65.0"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget NearLocations() => Container(
        child: Column(
          children: [
            TitleItem("Near You", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/istanbul5.jpg", "Bogazici Kop.","7km from you", "₺14.0"),
                  LocationItem("assets/images/istanbul3.jpg", "Kiz Kulesi","15km from you", "₺50.0"),
                  LocationItem("assets/images/istanbul4.jpeg", "Galata Kulesi","6km from you", "₺100.0"),
                  LocationItem("assets/images/istanbul6.jpg", "Galataport","10km from you", "₺0.0"),
                  LocationItem("assets/images/istanbul2.jpg", "Sultan Ahmet","6km from you", "₺80.0"),
                  LocationItem("assets/images/istanbul1.jpg", "Ayasofya Mosque","9km from you", "₺65.0"),
                ],
              ),
            ),
          ],
        ),
      );

  Container LocationItem(
          String photo, String title, String description, String price) =>
      Container(
        width: 165,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(15, 170, 170, 170),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(width: 150, photo),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 56, 56, 56),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 8,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 8,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 125, 87, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      price,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.white,
                      ),
                    )),
              ],
            ),
          ],
        ),
      );

  Widget TopLocations() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleItem("Top Locations", "View All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("assets/images/ezel.jpg", "Ezel Bayraktar"),
                  StoryItem("assets/images/tony montana.jpg", "Tony Montana"),
                  StoryItem("assets/images/polat alemdar.jpg", "Polat Alemdar"),
                  StoryItem(
                      "assets/images/ramiz karaeski.jpg", "Ramiz Karaeski"),
                  StoryItem(
                      "assets/images/suleymancakir.jpg", "Süleyman Çakır"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(15, 170, 170, 170),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Caferağa, Kadıköy",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              size: 17,
              color: Color.fromARGB(236, 125, 87, 1),
            ),
          ],
        ),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 233, 92, 70),
                ],
              ),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 16,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget header() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          //color: Colors.yellow,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome, K1",
                    style: TextStyle(
                      color: Color.fromARGB(255, 153, 153, 153),
                      fontSize: 14,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Explore Istanbul City",
                    style: TextStyle(
                      color: Color.fromARGB(255, 56, 56, 56),
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.sunny,
                      color: Color.fromRGBO(236, 125, 87, 1),
                      size: 20,
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    child: Icon(Icons.notifications, size: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  Widget bottom_menu() => Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 243, 243, 243),
            width: 1,
          ),
        ),
        width: double.infinity,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomMenuItem("Home", Icons.home, true),
            BottomMenuItem("Moments", Icons.groups, false),
            HighlightedItem("Book", Icons.maps_ugc, false),
            BottomMenuItem("Chat", Icons.forum, false),
          ],
        ),
      );

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(174, 174, 178, 1);

    if (active) {
      renk = Color.fromRGBO(43, 43, 43, 1);
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 25,
            color: renk,
          ),
          SizedBox(height: 3),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }

  Widget HighlightedItem(String title, IconData icon, bool active) {
    var renk = Color.fromRGBO(236, 125, 87, 1);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 32,
            color: renk,
          ),
          SizedBox(height: 3),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: renk,
            ),
          ),
        ],
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Container();
  }