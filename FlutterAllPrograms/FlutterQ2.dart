import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Demo'),
      ),
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                tabs: [
                  Tab(icon: Icon(Icons.call), text: 'Incoming'),
                  Tab(icon: Icon(Icons.call_made), text: 'Outgoing'),
                  Tab(icon: Icon(Icons.call_missed), text: 'Missed'),
                  Tab(icon: Icon(Icons.contacts), text: 'Contacts'),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue.withOpacity(0.1),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    // Incoming Tab
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call_received, size: 50),
                          Text('List of Incoming Calls'),
                        ],
                      ),
                    ),
                    // Outgoing Tab
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call_made, size: 50),
                          Text('List of Outgoing Calls'),
                        ],
                      ),
                    ),
                    // Missed Tab
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call_missed, size: 50),
                          Text('List of Missed Calls'),
                        ],
                      ),
                    ),
                    // Contacts Tab
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.contacts, size: 50),
                          Text('List of Contacts'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomSheet: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
