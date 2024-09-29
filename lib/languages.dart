import 'package:flutter/material.dart';

class LangPage extends StatefulWidget {
  const LangPage({super.key});

  @override
  State<LangPage> createState() => _LangPageState();
}

class _LangPageState extends State<LangPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 34, 183, 61),
        foregroundColor: Colors.white,
        title: Row(
          children: [
            const FlutterLogo(),
            const SizedBox(width: 12.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search button press
              // You can implement search functionality here
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 67, 188, 84),
        currentIndex: _currentIndex,
        onTap: (index) {
          // Handle bottom navigation bar item tap
          setState(() {
            _currentIndex = index;
          });

          // You can add your navigation logic here based on the index
          switch (index) {
            case 0:
              Navigator.pushNamed(context, "homepage");
              break;
            case 1:
              Navigator.pushNamed(context, "cartscreen");
              break;
            case 2:
              Navigator.pushNamed(context, "profile");
              break;
            case 3:
              Navigator.pushNamed(context, "settings");
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_max_outlined,
              color: Colors.black,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: "Settings",
          )
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            const Row(
              children: [
                Icon(
                  Icons.language,
                  color: Colors.green,
                ),
                SizedBox(width: 10),
                Text("Language",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
            const Divider(height: 20, thickness: 1),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hindi",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600])),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("English",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600])),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
