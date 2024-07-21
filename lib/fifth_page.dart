import 'package:flutter/material.dart';
import 'package:ui_project/settings.dart';
import 'call_model.dart';
import 'chat_model.dart';
import 'status_model.dart';

class FifthPage extends StatefulWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black12,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/animations/DaeKYh1.jpg"),
                radius: 20,
              ),
            ),
            SizedBox(width: 10),
            Text(
              "App",
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined), color: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit), color: Colors.white,),
          PopupMenuButton<String>(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onSelected: (selected) {
              if (selected == "Settings") {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
              }
              // Add more actions as needed
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: Text("New group"),
                  value: "New group",
                ),
                PopupMenuItem(
                  child: Text("Mark all read"),
                  value: "Mark all read",
                ),
                PopupMenuItem(
                  child: Text("Invite friends"),
                  value: "Invite Friends",
                ),
                PopupMenuItem(
                  child: Text("Filter unread chats"),
                  value: "Filter unread chats",
                ),
                PopupMenuItem(
                  child: Text("Settings"),
                  value: "Settings",
                ),
              ];
            },
          )
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ChatModel(),
          CallWidget(),
          StatusWidget(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        elevation: 0,
        child: TabBar(
          controller: _tabController,
          indicatorColor: Colors.black,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.chat, color: Colors.white),
              text: 'Chats',
            ),
            Tab(
              icon: Icon(Icons.call, color: Colors.white),
              text: 'Calls',
            ),
            Tab(
              icon: Icon(Icons.phone_android, color: Colors.white),
              text: 'Status',
            ),
          ],
        ),
      ),
    );
  }
}