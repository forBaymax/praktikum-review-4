import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  int _index = 0;
  void _onItemTap(int index) {
    setState(() {
      _index = index;
    });
  }

  static final List<Widget> _pages = [
    const Icon(
      Icons.home,
      size: 100,
    ),
    const Icon(
      Icons.chat_bubble,
      size: 100,
    ),
    const Icon(
      Icons.call,
      size: 100,
    ),
    const Icon(
      Icons.camera,
      size: 100,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
            ),
            accountName: Text("Praktikum Mobile"),
            accountEmail: Text('mobile@gmail.com'),
            decoration: BoxDecoration(color: Colors.lightBlueAccent),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/setting');
            },
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text('Cari'),
            onTap: () {},
          ),
        ]),
      ),
      appBar: AppBar(
        title: const Text("Home Page"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/account');
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
          )
        ],
      ),
      // body: Center(
      //   child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      //     ElevatedButton(
      //         child: const Text("Pindah Screen"),
      //         onPressed: () {
      //           // Navigator.push(
      //           //   context, MaterialPageRoute(
      //           //     builder: (context) {
      //           //   return const SettingsPage();
      //           // }));
      //           Navigator.pushNamed(context, '/setting');
      //         }),
      //     const SizedBox(
      //       height: 20,
      //     ),
      //     ElevatedButton(
      //         child: const Text("Ke Account Screen"),
      //         onPressed: () {
      //           Navigator.pushNamed(context, '/account');
      //         }),
      //   ]),
      // ),
      body: Center(
        child: _pages.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueAccent,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: _index,
        onTap: _onItemTap,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Telpon",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: "Camera",
          ),
        ],
      ),
    );
  }
}
